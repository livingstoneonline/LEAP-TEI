
require 'fileutils'
require 'mini_exiftool'

@csvfile = "Illustrative_Images_DC13.csv"

@dirmap = Hash.new

def getDirMap

	file = File.new(@csvfile,'r')
	file.each_line("\n") do |row|
		columns = row.split("$");
		@dirmap[columns[0].strip] = {				#A
				"title" => columns[1].strip,		#B
				"creator" => columns[2].strip,		#C
				"type" => columns[3].strip,		#D
				"format" => columns[4].strip,		#E
				"date" => columns[5].strip.split("/"),	#F
				"publisher" => columns[6].strip,	#G
				"description" => columns[7].strip,	#H
				"rights" => columns[8].strip		#I
		}
	end
	puts @dirmap
end


def godirs(currdir)
	Dir.chdir(currdir)

	#el = Dir.entries(".").reject{|f| f[/\.pdf$/]}.sort do |a,b| a<=>b end
	#pdfs = Dir.entries(".").select{|f| f[/\.pdf$/]}.sort do |a,b| a<=>b end
	el = Dir.entries(".").select{|f| f[/\.jpg$/] || f[/\.tif$/]}.sort do |a,b| a<=>b end

	el.each_with_index {|x,indx|
		if(File.directory?(x))
		else
			if(x == '.DS_Store')
			elsif (x.start_with?("._"))
				#puts "HIDDEN FILE "+x+" IGNORED"
			else
				filebase = x[0..9]
				puts "FILEBASE "+filebase.to_s
				#puts "FILEBASE "+filebase+" "+@dirmap[filebase].to_s

				photo = MiniExiftool.new x

				photo.Identifier = filebase.to_s
				photo.Title = @dirmap[filebase]["title"].to_s
				photo.Creator = @dirmap[filebase]["creator"].to_s
				photo.Type = @dirmap[filebase]["type"].to_s
				photo.Format = @dirmap[filebase]["format"].to_s
				photo.Description = @dirmap[filebase]["description"].to_s
				photo.Rights = @dirmap[filebase]["rights"].to_s
				photo.Publisher = @dirmap[filebase]["publisher"].to_s

				puts "TITLE "+@dirmap[filebase]["title"].to_s
				datearray = @dirmap[filebase]["date"]
				puts "DATE ARRAY "+datearray.to_s
#FSS
				datearray.each{ |d| "#{d} 01-01 00:00:00"}
				puts "POST DATE ARRAY "+datearray.to_s

				photo.Date = datearray

				#puts photo.inspect
				puts "SAVE "+photo.save.to_s
				puts "ERRORS "+photo.errors.to_s

				#CREATE XMP SIDECAR FILE
				cmd = "exiftool "+x+" -o "+x+".xmp"
				IO.popen(cmd){|f| puts f.gets}

				#CREATE EXIFTOOL CONSOLE OUTPUT TXT FILE
				cmd = "exiftool "+x+" > "+x+".txt"
				IO.popen(cmd){|f| puts f.gets}

				#CREATE MD5 FILE
				cmd = "md5 -q "+x+" > "+x+".md5"
				IO.popen(cmd){|f| puts f.gets}

			end
		end
	}
	Dir.chdir("..")
	#puts 'back up to '+Dir.pwd
end

getDirMap

godirs("./Illustrative-for-DC/")




#require 'json'
require 'fileutils'


@dirmap = Hash.new

def getDirMap
	file = File.new("rename.csv",'r')
	file.each_line("\n") do |row|
		columns = row.split("$");
		@dirmap[columns[1].strip] = columns[0].strip
		#puts columns[0]
		#puts columns[1]
	end
	puts @dirmap
end


def godirs(currdir,topdir,depth)
	#puts @dirmap
	depth += 1
	puts tabstr(depth,currdir)
	Dir.chdir(currdir)
	el = Dir.entries(".")
#FSS NEW ADDITION TO TEST
	#el.sort_by{|a| File.stat(a).mtime } #TIME ORDER
	el.sort do |a,b| a<=>b end
	filecount = 0
	el.each_with_index {|x,indx|
		if(File.directory?(x))
			#puts 'is dir'
			if(x == '.')
			elsif(x =='..')
			elsif(x =='dtd')
				#puts tabstr(depth+1,"SUBDIR dtd IGNORED*************************")
			elsif(x =='xsl')
				#puts tabstr(depth+1,"SUBDIR xsl IGNORED*************************")
			elsif(x.include? 'Spectral')
				#puts tabstr(depth+1,"SUBDIR Spectral IGNORED*************************")
			else
				godirs(x,topdir+"/"+currdir,depth)
			end
		else
			if(x == '.DS_Store')
			elsif (x.start_with?("._"))
				#puts "HIDDEN FILE "+x+" IGNORED"
			else
				filecount += 1
				currfilename = x
				currfilename = currfilename.chomp(File.extname(x))
				newdirname = @dirmap[currdir]
				#puts "NDN "+newdirname.to_s+" FROM "+currdir.to_s
				newfilename = newdirname.to_s+"/"+newdirname.to_s+"_"+(filecount).to_s.rjust(4,"0")+File.extname(x)
				puts "\t\tCOPY "+currdir+"/"+currfilename+" TO "+newfilename+" SIZE "+File.size(x).to_s
				if(newdirname == nil)
					puts tabstr(depth+1,File.basename(x)+" HAS NO MATCH*************************")
				else
					newfilepath = topdir+"/"+newfilename
					copyxml(File.absolute_path(x),newfilepath)
				end
			end
		end
	}
	Dir.chdir("..")
	#puts 'back up to '+Dir.pwd
end

def tabstr(d,m)
	tabline = "|"
	d.times {|i| tabline +="\t"}
	tabline += m
end

def copyxml(infilename,outfilename)
	#puts infilename + " copied to "+outfilename
	infile = File.read(infilename);
	FileUtils.mkdir_p(File.dirname(outfilename))
	File.open(outfilename, "w") do |f|
		f.write infile
	end
end

getDirMap
godirs("files-to-rename",Dir.pwd+"/out",-1)



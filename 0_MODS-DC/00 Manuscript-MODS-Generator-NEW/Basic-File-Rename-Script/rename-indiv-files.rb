
#require 'json'
require 'fileutils'


@dirmap = Hash.new

def getDirMap
	file = File.new("file-lists.csv",'r')
	file.each_line("\n") do |row|
		columns = row.split("$");
		@dirmap[columns[1].strip] = columns[0].strip
		#@dirmap[columns[0].strip] = columns[1].strip

		#puts columns[0]
		#puts columns[1]
	end
	#puts @dirmap
end


def godirs(currdir,topdir,depth)
	#puts @dirmap
	depth += 1
	#puts tabstr(depth,currdir)
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
				filenamesuffix = File.extname(x)
				filenamebase = x.chomp(filenamesuffix)

				lastpathpart = topdir.split('/').last	
				basepath = topdir.chomp(lastpathpart);
				if @dirmap[filenamebase == nil] || @dirmap[filenamebase].to_s.size < 2
					puts "NO TRANSLATION FOR "+filenamebase
				else
					puts x.to_s+" BECOMES "+@dirmap[filenamebase].to_s+filenamesuffix
					File.rename(x.to_s,@dirmap[filenamebase].to_s+filenamesuffix)
				end
				
				#copyxml(File.absolute_path(x),newfilepath)

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
godirs("Files-to-Rename",Dir.pwd+"/out",-1)



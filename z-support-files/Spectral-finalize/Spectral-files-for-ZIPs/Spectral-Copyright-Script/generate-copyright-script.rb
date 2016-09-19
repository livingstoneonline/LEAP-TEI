require 'csv'
require 'fileutils'

csvfile = File.join(File.dirname(__FILE__), "copyright_information.csv")

csv = CSV.read(csvfile, {
	:col_sep => "$",
	:quote_char => "®",
	:headers => true
})
csv.each do |line|
  if line[0] && line[1]
    File.open(File.join(File.dirname(__FILE__), line[0]), 'w') do |file|
      file.write(line[1])
    end
  end
end

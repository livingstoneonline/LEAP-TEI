require 'csv'
require 'fileutils'
require 'mini_exiftool'

#####################################
#    Insert metadata into images    #
#####################################
#  Written 2015 by Jessica Dussault
#    jdussault4@gmail.com | jduss4
#  For Adrian Wisnicki at UNL
#  Adapted from script by Frank Smutniak
#
# Parse CSV, embed information into tifs
# Create xmp, txt, and md5 for each tif
#
# To run:
# should have ruby 2.2.0
# install exiftool (http://www.sno.phy.queensu.ca/~phil/exiftool/)
# `gem install mini_exiftool`
# `ruby script3.rb`


@root_dir = Dir.pwd
@csvfile = File.join(File.dirname(__FILE__), "05b_Spectral-DC-07-liv95-redo.csv")
@image_directory = File.join(File.dirname(__FILE__), "images")

def main
  csv = map_csv(@csvfile, "$")  # array of arrays
  csv_info = {}  # the container for information manipulated from csv
  # parse through the csv and squish the data into new fields
  csv.each do |item|
    if item[0] && (item[0] =~ /liv_[0-9]{6}_[0-9]{4}.*/)  # make sure there is an id
      csv_info[item[0]] = create_item_metadata(item)
    else
      puts "Id incorrect for row of csv {item[0]}"
    end
  end

  # for each image attach metadata
  images = find_images(@image_directory)
  images.each do |image|
    filename = File.basename(image)
    # should return the name of the parent directory, not the path
    id = File.basename(image, ".*")

    # move to image's directory to make "directory" in exiftool come out as "."
    Dir.chdir(File.dirname(image))

    metadata = csv_info[id]
    if (metadata)
      exif = map_metadata_to_image(id, filename, metadata)
      exif.save
      puts "Errors with exif for #{id}: #{exif.errors.to_s}" if !exif.errors.empty?
      image_no_ext = File.join(File.dirname(filename), File.basename(filename, ".*"))
      puts "Creating files for #{image_no_ext}"
      create_md5(filename, image_no_ext)
      create_txt(filename, image_no_ext)
      create_xmp(filename, image_no_ext)
    else
      puts "No metadata found for image with id #{id}"
    end
    # change back to the original directory in case anything is added to this script later
    Dir.chdir(@root_dir)
  end
end

###########
# Helpers #
###########

def combine_columns(*args)
  return args.compact.join(", ")
end

def combine_relation(*args)
  return args.compact.join(" ")
end

def create_item_metadata(item)
  return {
    "title" => item[1],
    "creator" => combine_columns(item[2], item[3], item[4], item[5]),
    "contributor" => combine_columns(item[6], item[7], item[8], item[9]),
    "type" => combine_columns(item[10], item[11], item[12], item[13]),
    "date" => item[14],
    "format" => combine_columns(item[15], item[18]),
    "publisher" => item[19],
    "description" => item[20],
    "rights" => item[21],
    "relation" => combine_relation(item[22], item[23], item[24])
  }
end

# put filenames in quotes because special characters otherwise upset md5
def create_md5(file, new_file)
  stdout = `md5 -q "#{file}" > "#{new_file}.tif.md5"`
  puts stdout
end

# put filenames in quotes because special characters otherwise upset exiftool
def create_txt(file, new_file)
  stdout = `exiftool "#{file}" > "#{new_file}.tif.txt"`
  puts stdout
end

# put filenames in quotes because special characters otherwise upset exiftool
def create_xmp(file, new_file)
  if File.exists?("#{new_file}.tif.xmp")
    # exiftool outputs a large amount of unhappiness if the file exists
    puts "#{new_file}.tif.xmp already exists, skipping"
  else
    stdout = `exiftool "#{file}" -o "#{new_file}.tif.xmp"`
    puts stdout
  end
end


def find_images(directory=".")
  return Dir.glob("#{directory}/**/*.tif")
end

def map_csv(csv, separator=",")
  return CSV.read(csv, { 
    :col_sep => separator, 
    :quote_char => "®",      # <dc:relation type="dcterms:hasVersion">, etc were causing mega-problems
    :headers => true         # this will skip the first row
    })
end

def map_metadata_to_image(id, image, metadata)
  exif = MiniExiftool.new(image)
  exif.Identifier = id
  exif.Creator = metadata["creator"] if metadata_exists?(metadata["creator"])
  exif.Contributor = metadata["contributor"] if metadata_exists?(metadata["contributor"])
  exif.Date = metadata["date"] if metadata_exists?(metadata["date"])
  exif.Description = metadata["description"] if metadata_exists?(metadata["description"])
  exif.Format = metadata["format"] if metadata_exists?(metadata["format"])
  exif.Publisher = metadata["publisher"] if metadata_exists?(metadata["publisher"])
  exif.Relation = metadata["relation"] if metadata_exists?(metadata["relation"])
  exif.Rights = metadata["rights"] if metadata_exists?(metadata["rights"])
  exif.Title = metadata["title"] if metadata_exists?(metadata["title"])
  exif.Type = metadata["type"] if metadata_exists?(metadata["type"])
  return exif
end

def metadata_exists?(item)
  return item && !item.nil? && !item.empty?
end

main

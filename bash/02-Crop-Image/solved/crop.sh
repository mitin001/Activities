# prepare the directories
mkdir -p "$2"
cd "$1"

# for each jpg file in the input directory
for file in *.jpg
do
	# crop out the bottom of the image so the resulting aspect ratio is 13:8
	# https://stackoverflow.com/a/49561441/7249166
	# https://imagemagick.org/script/command-line-options.php#gravity
	convert "$file" -gravity North -crop 13:8 +repage ../"$2"/"$file"
done

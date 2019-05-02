# prepare the directories
mkdir -p "$2"
cd "$1"

# for each jpg file in the input directory
for file in *.jpg
do
	# crop out the image with the specified gravity and resulting aspect ratio
	# https://stackoverflow.com/a/49561441/7249166
	# https://imagemagick.org/script/command-line-options.php#gravity
	convert "$file" -gravity "$3" -crop "$4" +repage ../"$2"/"$file"
done

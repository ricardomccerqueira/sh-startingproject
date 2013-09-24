echo "Download unsemantic"

git clone https://github.com/nathansmith/unsemantic.git

mv unsemantic/assets/sass www/

cd www/sass/

for item in *.sass
do
	if test "$item" != "unsemantic-grid-responsive.sass" && test "$item" != "ie.sass"; then
		rm "$item"
	fi
done

cd ../../

rm -rf unsemantic

echo "Downloading jquery2"

curl http://code.jquery.com/jquery-2.0.3.min.js > www/js/jquery2.js

echo "Downloading jquery1.latest"

curl http://code.jquery.com/jquery-latest.min.js > www/js/jquery.js

echo "Downloading knockout"

curl http://knockoutjs.com/downloads/knockout-2.3.0.js > www/js/knockout.js

echo "Downloading underscorejs"

curl http://underscorejs.org/underscore-min.js > www/js/underscore.js

echo "Downloading sammyjs"

curl https://raw.github.com/quirkey/sammy/master/lib/min/sammy-latest.min.js > www/js/sammyjs.js

echo "Downloading conditionizr"

curl https://raw.github.com/conditionizr/conditionizr/master/src/conditionizr.js > www/js/conditionizr.js

echo "Downloading html5 boilerplate plugin rewrite"

curl https://raw.github.com/h5bp/html5-boilerplate/master/js/plugins.js > www/js/plugins.js

echo "Cleaning the folder"

rm -rf .git
rm README.md
rm buildproject.sh

echo "WORK TIME"
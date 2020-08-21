generate () {
	touch random{1..5}.html
	touch random\ file.html
	touch random.txt
}

zip-files () {
	ls | grep '.html' | xargs -d "\n" tar -c -f "html-files.zip"
}

clean () {
	ls | grep -E '.html|.txt|.zip' | xargs rm
	rm random\ file.html
}

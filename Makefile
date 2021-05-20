index.html: clean
	cp -f lib/start.html index.html

	for f in md/*
		do pandoc -s $f \ --template lib/post.html \ --toc-depth=2 -o out/$f.html
		cat out/$f.html >> index.html
	done

	cat lib/end.html >> index.html

clean:
	rm -rf out/* index.html

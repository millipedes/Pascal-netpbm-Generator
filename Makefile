all:
	fpc -gv -g Main.pas

run:
	./Main

memcheck:
	valgrind --leak-check=full ./Main

p-v:
	nvim Documentation/uml_diagram.txt
p-o:
	feh Documentation/uml_diagram.png&
p-m:
	plantuml Documentation/uml_diagram.txt

git-update:
	git add Makefile README.md Documentation/ Main.pas FileIO/ Graph/
	git commit -m "update commit"
	git push origin main

clean:
	find . -type f -name '*.o' -delete
	find . -type f -name '*.ppu' -delete
	rm Main

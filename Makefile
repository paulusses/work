
all: install 

build:
	mkdir build && cd ./build/ && cmake .. && make

install: build
	@mkdir $(HOME)/Desktop/Folder_logs/
	@cp -rf build/folder_log $(HOME)/Desktop/Folder_logs/
	make clean

dvi:
	open Readme.md

uninstall:
	@rm -rf $(HOME)/Desktop/Folder_logs/

clean:
	rm -rf ./build*

rebuild: clean all

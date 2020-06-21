CC=gcc
loc=$(shell pwd)

all: src/temp_test.c src/temp_test.h
	${CC} -shared -o build/libtemptest.so -fPIC src/temp_test.c
	${CC} -o build/temp_test src/temp_test.h src/main.c  build/libtemptest.so

clear: 
	rm build/*.so
	rm build/temp_test

test: build/temp_test
	./build/temp_test
	

install: build/temp_test build/libtemptest.so
	cp build/libtemptest.so /usr/lib
	cp src/temp_test.h /usr/include
	cp build/temp_test /bin

uninstall:
	rm /usr/lib/libtemptest.so
	rm /usr/include/temp_test.h
	rm /bin/temp_test

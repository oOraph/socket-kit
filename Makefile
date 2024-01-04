CFLAGS += -std=c99 -Wall

default: socket-kit.so

socket-kit.so: socket-kit.c
	gcc $(CFLAGS) -shared -fPIC $^ -o $@ -ldl

test: socket-kit.so
	bash test.sh

clean:
	rm *.so
run: interpose ./FIRESTARTER
	LD_PRELOAD=./interpose.so ./FIRESTARTER -t 10

clean:
	rm -f interpose.so

interpose:
	gcc -Wall -std=c99 interpose.c -o interpose.so -fPIC -shared -ldl

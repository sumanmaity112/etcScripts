src = *.c
objectFile = *.o
des=newExeFile

make:
	make compile
	gcc $(objectFile) -o $(des)
compile:
	gcc -c $(src)
clean:
	rm $(objectFile)
	rm $(des)
output:
	$ ./$(des)
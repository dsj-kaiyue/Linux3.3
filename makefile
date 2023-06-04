main:main.c ./lib/libcal.a
        gcc  -o main main.c -I ./include -L./lib -lcal
./lib/libcal.a:./lib/add.o ./lib/sub.o
        ar rcs ./lib/libcal.a ./lib/add.o ./lib/sub.o
./lib/add.o:./src/add.o
        gcc -c ./src/add.c -o ./lib/add.o -I ./include
./lib/sub.o:./src/sub.o
        gcc -c ./src/sub.c -o ./lib/sub.o -I ./include
.PHONY:clean
clean:
        rm ./lib/*.o  main ./src/*.o



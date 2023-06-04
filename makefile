CC = gcc
CFLAGS = -I./include
LDELAGS = -L./lib -lcal
main-v1:main.c ./lib/libcal.a
	$(CC) -o $@ $< $(CFLAGS) $(LDELAGS)
./lib/libcal.a:./lib/add.o ./lib/sub.o
	ar rcs $@ $^
./lib/add.o:./src/add.c
	$(CC) -c $< -o $@ $(CFLAGS)
./lib/sub.o:./src/sub.c
	$(CC) -c $< -o $@ $(CFLAGS)
PHONY:clean
clean:
	rm ./lib/*.o main-v1 ./src/*.o


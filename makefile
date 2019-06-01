build:all

INC=-I ./include
SRC=./src/*.c
TAR=MAIN

all:$(SRC)
	@echo all target: $@
	@echo all dependence: $^
	gcc $(INC) -o $(TAR) $(SRC)




.PHONY: clean
clean:
	rm -rf build

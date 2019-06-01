build:all

INC=-I ./include

all:main.c
	@echo all target: $@
	@echo all dependence: $^
	gcc $(INC) -o main main.c




.PHONY: clean
clean:
	rm -rf build

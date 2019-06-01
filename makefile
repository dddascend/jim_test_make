#author: jim.di
#date: 2019-6-1

#include directory
INC=-I ./include \
-I ./src/app1 \
-I ./src/app2 \

#the source file of main
MAINSRC=*.c

#the final target
TAR=main

#the obj files
OBJ_FILE += $(patsubst %.c, %.o, $(wildcard *.c))
OBJ_FILE += $(patsubst %.c, %.o, $(wildcard ./src/app1/*.c))
OBJ_FILE += $(patsubst %.c, %.o, $(wildcard ./src/app2/*.c))

#rules
all:obj
	@echo all target: $@
	@echo all dependence: $^
	gcc -o $(TAR) $(OBJ_FILE)

obj:maino app1o app2o


maino:$(MAINSRC)
	gcc $(INC) -c $(MAINSRC)

app1o:
	@echo app1 target: $@
	@echo app1 dependence: $^
	make -C ./src/app1

app2o:
	@echo app2 target: $@
	@echo app2 dependence: $^
	make -C ./src/app2


.PHONY: clean
clean:
	rm -rf build

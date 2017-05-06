OBJ=obj
INCLUDE=include
BIN=bin
SRC=src

all: ${OBJ}/mips_arch.o ${OBJ}/mips.o ${OBJ}/main.o
	g++ -g -Wall -o main ${OBJ}/mips_arch.o ${OBJ}/mips.o ${OBJ}/main.o

${OBJ}/mips_arch.o: ${SRC}/mips_arch.cpp
	g++ -g -c ${SRC}/mips_arch.cpp -o ${OBJ}/mips_arch.o

${OBJ}/mips.o: ${SRC}/mips.cpp 
	g++ -g -c ${SRC}/mips.cpp -o ${OBJ}/mips.o

${OBJ}/main.o: ${SRC}/main.cpp
	g++ -g -c ${SRC}/main.cpp -o ${OBJ}/main.o

clean:
	rm -f ${OBJ}/*.o *~ core ${INCLUDE}/*~

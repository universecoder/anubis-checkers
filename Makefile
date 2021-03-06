CXX=g++
CFLAGS=-I. --std=c++11
LINKER_FLAGS=-lsfml-graphics -lsfml-window -lsfml-system
DEPS=board.hpp move.hpp test.hpp
OBJ=board.o move.o movegen.o test.o main.o

%.o: %.c $(DEPS)
	$(CXX) $(CFLAGS) -c -o $@ $<

anubis_checkers: $(OBJ)
	$(CXX) $(CFLAGS) -o $@ $^ $(LINKER_FLAGS)

clean:
	rm board.o move.o movegen.o test.o main.o anubis_checkers

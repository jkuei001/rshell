all: rshell

rshell: BaseCommand.o main.o
  g++ ./bin/BaseCommand.o ./bin/main.o -Wall -Werror -ansi -pedantic -o rshell
BaseCommand.o: BaseCommand.cc
  g++ ./src/BaseCommand.cc -c -Wall -Werror -ansi -pedantic -o ./bin/BaseCommand.o
main.o: main.cpp
  g++ ./src/main.cpp -c -Wall -Werror -ansi -pedantic -o ./bin/main.o

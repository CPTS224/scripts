CC=gcc
CFLAGS:=-g

# difference b/t = and := and ?=
eqHi=$(eqTmp)
eqTmp=Hi_Equals

colHi:=Hi_Colon_Equals
colTmp:=$(colHi) second
colHi:=Hi_Colon_EqualsFirst 

quHi=Hi_Question_Equals
quHi?=Hi_Question_Equals2

echoeqvar:;@echo $(eqHi)
echocovar:;@echo $(colHi)
echoquvar:;@echo $(quHi)

# silent command by @

SRCDIR=.
SRC:=$(wildcard $(SRCDIR)/*.c)
#OBJECTS:=other.o example.o
OBJECTS=$(SRC:.c=.o)
INCLUDES:=other.h

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< 

#%.bin: $(OBJECTS)
%.bin: %.o other.o
	$(CC) -o $* $(OBJECTS)

#example: example.c other.h other.o
#	$(CC) -o example example.c other.o
#
#other.o: other.c other.h
#	$(CC) $(CFLAGS) -c other.c

clean:
	rm -f example other.o example.o other.h.gch

run:
	./example

all: $(OBJECTS)
	$(CC) $(OBJECTS) -o example

install:
	mkdir deploy/
	mv example deploy/

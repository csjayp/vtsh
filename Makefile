OBJS=	vtsh.o
CC?=	CC
PROG=	vtsh
PREFIX?=/usr/local
vtsh:	$(OBJS)
	$(CC) -o $(PROG) $(OBJS)
install:
	cp $(PROG) $(PREFIX)/sbin
clean:
	rm -f *.o $(PROG)
all:	vtsh

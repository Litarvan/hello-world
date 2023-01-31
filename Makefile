PREFIX=/usr/local
CC=cc
CFLAGS=-Wall -Wextra -Werror -std=c99 -O3

OUT=hello-world

SRCS=main.c
OBJS=main.o

all: $(OUT)

$(OBJS): $(SRCS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(OUT): $(OBJS)
	$(CC) -g -o $@ $<

install: $(OUT)
	install -m 0755	$(OUT) $(PREFIX)/bin

clean:
	$(RM) $(OBJS) $(OUT)

.PHONY: install clean

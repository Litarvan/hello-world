PREFIX := /usr/local
CC := cc

CFLAGS := -Wall -Wextra -Werror
CFLAGS += -pedantic -std=c99 -O3

OUT := hello-world

SRC := main.c
OBJ := $(SRC:.c=.o)

all: $(OUT)

$(OUT): $(OBJ)
	$(CC) -o $@ $< $(CFLAGS)

install: $(OUT)
	install -m 0755	$(OUT) $(PREFIX)/bin

clean:
	$(RM) $(OBJ) $(OUT)

.PHONY: install clean all

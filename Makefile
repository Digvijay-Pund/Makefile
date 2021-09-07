TARGET = main

SRC = src
INC = inc
BIN = bin
OBJ = objs
SOURCE = $(wildcard $(SRC)/*.c)
OBJECT = $(patsubst %,$(OBJ)/%, $(notdir $(SOURCE:.c=.o)))

CC = gcc
CFLAGS = -Wall -std=gnu99 -I$(INC)

$(BIN)/$(TARGET) : $(OBJECT)
	$(CC) -o $@ $^
	
$(OBJ)/%.o : $(SRC)/%.c
	$(CC) $(CFLAGS) -c $< -o $@
	
.PHONY : help run clean move


clean:
	rm -f $(OBJECT) $(BIN)/$(TARGET)
	rm -f $(OBJECT) $(OBJ)/$(TARGET)

move :
	mv bin/main objs
help :
	@echo "src: $(SOURCE)"
	@echo "obj: $(OBJECT)"


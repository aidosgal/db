CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -g
SRC_DIR = src
BIN_DIR = build
SRC = $(SRC_DIR)/main.c
OBJ = $(BIN_DIR)/main.o
TARGET = $(BIN_DIR)/db

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(TARGET): $(OBJ) | $(BIN_DIR)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

$(OBJ): $(SRC) | $(BIN_DIR)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)

clean:
	rm -rf $(BIN_DIR)

run: $(TARGET)
	./$(TARGET)

.PHONY: clean run

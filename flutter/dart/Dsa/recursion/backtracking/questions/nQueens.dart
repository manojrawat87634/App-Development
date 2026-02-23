import 'dart:io';

void solveQueens(List<List<String>> board, int row, int size) {
  if (row == size) {
    print("--------------solution------------");
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        stdout.write(board[i][j]);
      }
      print("");
    }
  }
  for (int i = 0; i < size; i++) {
    if (isValid(board, row, i, size)) {
      board[row][i] = " Q ";
      solveQueens(board, row + 1, size);
      board[row][i] = " . ";
    }
  }
}

bool isValid(List<List<String>> board, int row, int col, int size) {
  for (int i = 0; i < row; i++) {
    if (board[i][col] == " Q ") {
      return false;
    }
  }

  for (int i = row - 1, j = col - 1; i >= 0 && j >= 0; i--, j--) {
    if (board[i][j] == " Q ") {
      return false;
    }
  }
  for (int i = row - 1, j = col + 1; i >= 0 && j < size; i--, j++) {
    if (board[i][j] == " Q ") {
      return false;
    }
  }

  // for (int i )
  return true;
}

void main() {
  int size = 4;
  List<List<String>> board = [];
  for (int i = 0; i < size; i++) {
    List<String> row = [];
    for (int j = 0; j < size; j++) {
      row.add(" . ");
    }
    board.add(row);
  }
  solveQueens(board, 0, size);
}

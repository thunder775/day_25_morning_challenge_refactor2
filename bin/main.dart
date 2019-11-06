// Challenge 1
// Write Test cases for given challenges

// Challenge 2
// Sudoku Validation
// Write a sudoku validator. This function should return true if the 2-D array represents a valid sudoku and false otherwise. To be a valid sudoku:
//
// - Each row must have the digits from 1 to 9 exactly once.
// - Each column must have the digits from 1 to 9 exactly once.
// - Each 3x3 box must have the digits from 1 to 9 exactly once.
// Examples
//  sudokuValidator([
//  [ 1, 5, 2, 4, 8, 9, 3, 7, 6 ],
//  [ 7, 3, 9, 2, 5, 6, 8, 4, 1 ],
//  [ 4, 6, 8, 3, 7, 1, 2, 9, 5 ],
//  [ 3, 8, 7, 1, 2, 4, 6, 5, 9 ],
//  [ 5, 9, 1, 7, 6, 3, 4, 2, 8 ],
//  [ 2, 4, 6, 8, 9, 5, 7, 1, 3 ],
//  [ 9, 1, 4, 6, 3, 7, 5, 8, 2 ],
//  [ 6, 2, 5, 9, 4, 8, 1, 3, 7 ],
//  [ 8, 7, 3, 5, 1, 2, 9, 6, 4 ]
//  ]) ➞ true
bool sudokuValidator(List<List> board) {
  //lets check if the given row has all
  //numbers from 1 to 9, and they occur only once.
  for (int i = 0; i < 9; i++) {
    for (int j = 1; j <= 9; j++) {
      if (countElementInList(board[i], j) != 1) {
        return false;
      }
    }
  }

  //lets check if the given column has all
  //numbers from 1 to 9, and they occur only once.
  int colNo = 0;
  while (colNo < 9) {
    List col = [];

    for (int j = 0; j < 9; j++) {
      col.add(board[j][colNo]);
    }
    //now that we have our first column,
    //let check if the numbers from 1 to 9 repeat in it or not
    for (int i = 1; i <= 9; i++) {
      if (countElementInList(col, i) != 1) {
//        print('$i occurred ${countElementInList(col, i)} in $col');
        return false;
      }
    }
    col = [];
    colNo++;
  }

  //now let check the group of cells
  //where i is from i->0-2 j ->0-2, i 0-2 j 3-5, i 0-2, j 6-8
  //where i is from i->3-5 j ->0-2, i 0-2 j 3-5, i 0-2, j 6-8
  //where i is from i->6-8 j ->0-2, i 0-2 j 3-5, i 0-2, j 6-8
//---------------------
  List group = [];
  for (int i = 0; i <= 2; i++) {
    for (int j = 0; j <= 2; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }

  group = [];
  for (int i = 3; i <= 5; i++) {
    for (int j = 0; j <= 2; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }

  group = [];
  for (int i = 6; i <= 8; i++) {
    for (int j = 0; j <= 2; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }
//--------------------
  group = [];
  for (int i = 0; i <= 2; i++) {
    for (int j = 3; j <= 5; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }

  group = [];
  for (int i = 3; i <= 5; i++) {
    for (int j = 3; j <= 5; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }

  group = [];
  for (int i = 6; i <= 8; i++) {
    for (int j = 3; j <= 5; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }
  //-------------------
  group = [];
  for (int i = 0; i <= 2; i++) {
    for (int j = 6; j <= 8; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }

  group = [];
  for (int i = 3; i <= 5; i++) {
    for (int j = 6; j <= 8; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }

  group = [];
  for (int i = 0; i <= 2; i++) {
    for (int j = 6; j <= 8; j++) {
      group.add(board[i][j]);
    }
  }
  //now lets check if all numbers from 1-9 only occurs once in this group
  for (int i = 1; i <= 9; i++) {
    if (countElementInList(group, i) != 1) {
      return false;
    }
  }
  return true;
}

int countElementInList(List aList, int x) {
  //if element occurs more than once then return false
  int count = 0;
  for (int i = 0; i < aList.length; i++) {
    aList[i] == x ? count++ : null;
  }
  return count;
}

// Challenge 3
// Sort by Factor Length
// A numbers factor length is simply its total number of factors.
// Create a function that sorts an array by factor length in descending order.
// If multiple numbers have the same factor length, sort these numbers in descending order, with the largest first.
//
// In the example below, since 13 and 7 both have only 2 factors, we put 13 ahead of 7.
//
// factorSort([9, 7, 13, 12]) ➞ [12, 9, 13, 7]
List factorSort(List numbers) {
  numbers.sort((a, b) => countFactors(a).compareTo(countFactors(b)));
  return numbers.reversed.toList();
}

int countFactors(int number) {
  int count = 0;
  for (int i = 1; i <= number; i++) {
    number % i == 0 ? count++ : null;
  }

  return count;
}

main() {
  print(countElementInList([1, 5, 2, 4, 1, 9, 3, 7, 6], 1));
  print(sudokuValidator([
    [1, 5, 2, 4, 8, 9, 3, 7, 6],
    [7, 3, 9, 2, 5, 6, 8, 4, 1],
    [4, 6, 8, 3, 7, 1, 2, 9, 5],
    [3, 8, 7, 1, 2, 4, 6, 5, 9],
    [5, 9, 1, 7, 6, 3, 4, 2, 8],
    [2, 4, 6, 8, 9, 5, 7, 1, 3],
    [9, 1, 4, 6, 3, 7, 5, 8, 2],
    [6, 2, 5, 9, 4, 8, 1, 3, 7],
    [8, 7, 3, 5, 1, 2, 9, 6, 4]
  ]));
  print(countFactors(9));
  print(factorSort([9, 7, 13, 12]));
}

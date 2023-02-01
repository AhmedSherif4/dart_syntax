// ignore_for_file: file_names

void main(List<String> args) {
  var rowColumns= [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [10, 5, 8, 9]
  ];
  print(rowColumns[0][2]);
  print(rowColumns);
  for (var i = 0; i <= 2; i++) { // بالطول columns 
    for (var j = 0; j <= 3; j++) { // بالعرض rows
    print(rowColumns[i][j]);
  }
  }
  for (var h in rowColumns) {
      print(h);
  };
}
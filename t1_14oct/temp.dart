main() {
  print('');
  print('hello');
  print('');

  int? a = null; // nullable  int? // 1,2,3,...,null
  int b = 5;// int // 1,2,3,...
  print('a=${a} b=${b}');
  print('');

  String c = ''; // empty string
  String d = 'test';// 'test', 'word'
  String? e = null; // 'test', 'word', null
  print('c=${c} d=${d} e=${e}');
  print('');


  e = 'somchai';
  print(e ?? 'no name'); // when e is null -> 'no name'
  print('');

  e = null;
  print(e ?? 'no name'); // when e is null -> 'no name'
  print('');

  e = b > 7 ? 'sm' : 'so';
  print(e ?? 'no name'); // so
  print('');
  // statement ? true : false

  int x = sum(1, 2);
  print(x);

  var name = greet();

}

int sum(int a, int b){
  return a + b;
}


// Declare a Dart variable called 'myAge' and assign your age to it.
// Print the value of 'myAge' to the console.
// Your code here


// Write a Dart function called 'multiply' that takes two parameters, 'a' and 'b',
// and returns their product.
// Your code here


// Declare two Dart variables, 'num1' and 'num2', and assign any two numbers to them.
// Write a Dart function called 'addNumbers' that takes these two variables as parameters
// and returns the sum of 'num1' and 'num2'.
// Your code here



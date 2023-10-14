
// Write a Dart function called 'greet' that takes a parameter 'name', 
// and has a default value of "Guest" if 'name' is not provided.
// The function should return a greeting message like "Hello, [name]!".
// Your code here

String greet({String name = "Guest"}){
  return 'Hello, ${name}!';
}

greet1(String name, String name2, {String? name3, String name4 = 'test'}){ // positional argument, optional argument
  // return 'Hello, ${name}!';
// code here
  }

main(){

    var txt = greet(name: "John");
    print(txt);

    txt = greet1('name1', 'name2');
    print(txt);
  }


int calculateFactorial(int n){
  // if n is 5 -> 5*4*3*2*1
  int sum = 1;
  for (var i = n; i > 0; i--) {
    sum = sum * i;
    // 1 * 5
    // 5 * 4
    // 20 * 3
    // 60 * 2
    // 120 * 1
  }
  return sum;
}

// Define a Dart function called 'calculateFactorial' that takes an integer 'n' as a parameter.
// The function should calculate and return the factorial of 'n'.
// A factorial is the product of all positive integers from 1 to 'n'.
// For example, the factorial of 5 is 5! = 5 * 4 * 3 * 2 * 1 = 120.
// Your code here


//

import 'package:fpdart/fpdart.dart';

main() {
  print('hello');

  Either<String, int> res = getUser(1);
  res.match(
    (String left) {
      print('this is left: $left');
    },
    (int right) {
      print('this is right: $right');
    },
  );

}

// guard clause

Either<String, int> getUser(int id) {
  if (id < 3) {
    return const Left('User not found');
  } else {
    return const Right(5);
  }
}

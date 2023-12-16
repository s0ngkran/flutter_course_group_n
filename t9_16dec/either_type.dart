main() {
  print('hello');
}

Either<String, String> getUser(int id) {
  if (id < 3) {
    return Left('User not found');
  } else {
    return Right('User found');
  }
}

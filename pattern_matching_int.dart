// Example of pattern matching with an integer.

main() {
  [-1, 0, 1, 2, 3, 4].forEach((int i) => print(describeInteger(i)));
}

String describeInteger(int i) {
  switch (i) {
    case _ when i % 2 == 0:
      return 'even';
    default:
      return 'odd';
  }
}


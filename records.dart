import 'dart:math';

// Example of records.

main() {
  final (Rectangle _, String word) = _getWordAt(Point(100.0, 100.0));

  print('The word at 100.0, 100.0 is $word.');
}

(Rectangle boundingBox, String word) _getWordAt(Point point) {
  // ...big calculation involving laying out text...
  final Rectangle madeUpBoundingBox = Rectangle(
    point.x,
    point.y,
    20.0,
    10.0,
  );
  final String madeUpWord = 'dash';

  return (
    madeUpBoundingBox,
    madeUpWord,
  );
}

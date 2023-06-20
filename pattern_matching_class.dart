import 'dart:math' as math;

// Example of pattern matching with subclass types.

main() {
  print('The area of a Rectangle of length 2 and width 6 is ${area(Rectangle(l: 2, w: 6))}.');
}

double area(Shape shape) {
  return switch (shape) {
    Rectangle() => shape.l * shape.w,
    Circle() => math.pi * shape.r * shape.r,
  };
}

sealed class Shape {
  const Shape();
}

class Rectangle extends Shape {
  const Rectangle({
    required this.l,
    required this.w,
  });

  final double l;
  final double w;
}

class Circle extends Shape {
  const Circle({
    required this.r,
  });

  final double r;
}

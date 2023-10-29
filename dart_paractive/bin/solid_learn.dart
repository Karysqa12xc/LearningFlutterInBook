// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Shape {
  double area();
}

abstract class Area {
  double computeArea();
}

class Square implements Area {
  @override
  double computeArea() {
    // TODO: implement computeArea
    throw UnimplementedError();
  }
}

class Rectangle implements Area {
  final double width;
  final double height;
  Rectangle(
    this.width,
    this.height,
  );

  @override
  double computeArea() {
    // TODO: implement computeArea
    throw UnimplementedError();
  }
}

class Circle implements Area {
  final double radius;
  Circle(this.radius);
  double get PI => 3.14;

  @override
  double computeArea() {
    return radius * radius * PI;
  }
}

class Triangle implements Area {
  @override
  double computeArea() {
    // TODO: implement computeArea
    throw UnimplementedError();
  }
}

class Rhombus implements Area {
  @override
  double computeArea() {
    // TODO: implement computeArea
    throw UnimplementedError();
  }
}

class Trapezoid implements Area {
  @override
  double computeArea() {
    // TODO: implement computeArea
    throw UnimplementedError();
  }
}

class AreaCalculator {
  double calculator(Area shape) {
    return shape.computeArea();
  }
}

class ShapePainter {}

class ShapesOnline {}

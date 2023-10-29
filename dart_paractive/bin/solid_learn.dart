// ignore_for_file: public_member_api_docs, sort_constructors_first


abstract class Shape {
  double area();
}

class Square  {
 
}

class Rectangle extends Shape{
  final double width;
  final double height;
  Rectangle(
    this.width,
    this.height,
  );
  
  @override
  double area() {
    // TODO: implement area
    throw UnimplementedError();
  }
}

class Circle extends Shape{
  final double radius;
  Circle(this.radius);
  double get PI => 3.14;
  
  @override
  double area() {
    // TODO: implement area
    throw UnimplementedError();
  }
}
// class AreaCalculator {
//   double calculator(Object shape){
//     if(shape is Rectangle){
//       return shape.width * shape.height;
//     }else{
//       final c = shape as Circle;
//       return c.radius * c.radius * c.PI;
//     }
//   }
// }
class ShapePainter {}

class ShapesOnline {}

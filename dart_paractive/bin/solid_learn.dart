// ignore_for_file: public_member_api_docs, sort_constructors_first
class Rectangle {
  double width;
  double height;
  Rectangle(
    this.width,
    this.height,
  );
}
//! Logic Error Square can't extends Rectangle
class Square extends Rectangle {
  Square(double length) : super(length, length);
}

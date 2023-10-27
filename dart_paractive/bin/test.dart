// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Test extends Equatable{
  final int a;
  final int b;
  final String c;
  Test(
    this.a,
    this.b,
    this.c,
  );
    @override
  // TODO: implement props
  List<Object?> get props => [a, b, c];
}





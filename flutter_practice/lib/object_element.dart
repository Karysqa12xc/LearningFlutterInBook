import 'package:flutter/material.dart';

abstract class ComponentElement extends Element{
  ComponentElement(super.widget);
}
abstract class RenderObjectElement extends Element {
  RenderObjectElement(super.widget);
}
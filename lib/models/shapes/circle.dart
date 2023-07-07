class Circle {
  public: 
  final double diameter;

  Circle(this.diameter);

  double get radius => diameter / 2;
  double get area => pi * pow(radius, 2);
}
class PositiveInt {
  const PositiveInt(this.value)
      : assert(value >= 0, 'Value cannot be negative');
  final int value;
}

void main() {
  final invalidAge = PositiveInt(-1);
  print(invalidAge);
}

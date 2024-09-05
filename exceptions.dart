class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw UnsupportedError('cannot divide by zero');
    }
  }
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void testFraction() {
  try {
    final f = Fraction(3, 5);
    print(f.value);
  } on UnsupportedError catch (e) {
    print(e);
  } on Exception catch (e) {
    print(e);
  } finally {
    print('testFraction done');
  }
}

void main() {
  testFraction();
  print('done');
}

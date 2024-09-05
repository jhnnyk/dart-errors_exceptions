class EmailAddress {
  EmailAddress(this.email) {
    if (email.isEmpty) {
      throw FormatException('email cannot be empty');
    }
    if (!email.contains('@')) {
      throw FormatException('$email must contain @ symbol');
    }
  }
  final String email;

  @override
  String toString() {
    return email;
  }
}

void main() {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}
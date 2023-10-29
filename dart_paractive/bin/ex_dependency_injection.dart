class PaymentValidator {
  final String email;
  const PaymentValidator(this.email);
  void validatePayment(int amount) {}
}

class PaymentProcessor {
  late final PaymentValidator _validator;
  PaymentProcessor(String email) : _validator = PaymentValidator(email);
  void pay(int amount) {
    _validator.validatePayment(amount);
  }
}

abstract class Checker {
  PaymentValidator payPalCheck();
}

class CheckerOne extends Checker {
  @override
  PaymentValidator payPalCheck() {
    // TODO: implement masterCarCheck
    throw UnimplementedError();
  }
}

class CheckerTwo extends Checker {
  @override
  PaymentValidator payPalCheck() {
    // TODO: implement masterCarCheck
    throw UnimplementedError();
  }
}

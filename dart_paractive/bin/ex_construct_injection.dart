abstract class PaymentValidator {
  const PaymentValidator();
  void validatePayment(int amount);
}

class MasterCard implements PaymentValidator {
  const MasterCard();
  @override
  void validatePayment(int amount) {
    // TODO: implement validatePayment
  }
}

class PayPal implements PaymentValidator {
  const PayPal();

  @override
  void validatePayment(int amount) {
    // TODO: implement validatePayment
  }
}

class Visa implements PaymentValidator {
  const Visa();
  @override
  void validatePayment(int amount) {
    // TODO: implement validatePayment
  }
}

class TestValidator implements PaymentValidator {
  const TestValidator();
  @override
  void validatePayment(int amount) {
    // TODO: implement validatePayment
  }
}

abstract class Checker {
  PaymentValidator paymentCheck();
}
class CheckerOne extends Checker {
  @override
  PaymentValidator paymentCheck() {
    // TODO: implement paymentCheck
    throw UnimplementedError();
  }
}
class CheckTwo extends Checker {
  @override
  PaymentValidator paymentCheck() {
    // TODO: implement paymentCheck
    throw UnimplementedError();
  }
  
}

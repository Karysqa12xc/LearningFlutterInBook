import 'ex_construct_injection.dart';
import 'ex_method_injection.dart';

class PaymentProcessor {
  final PaymentValidator _validator;
  const PaymentProcessor(this._validator);
  void pay(int amount) => _validator.validatePayment(amount);
  Future<bool> isProcessorActive(CheckProcessor check) => check.isActive();
}

void main(List<String> args) {
  final api = MasterCardApi();
  final processor = MasterCard();
  final checker = MastercardCheck(api);

  final payment = PaymentProcessor(processor);
  final isOnline = payment.isProcessorActive(checker);
}

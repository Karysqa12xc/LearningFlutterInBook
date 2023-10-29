abstract class CheckProcessor {
  const CheckProcessor();
  Future<bool> isActive();
}

class MastercardCheck implements CheckProcessor {
  final MasterCardApi _api;
  const MastercardCheck(this._api);
  @override
  Future<bool> isActive() async => await _api.isOnline();
}

class PaypalCheck implements CheckProcessor {
  final PaypalApi _api;
  const PaypalCheck(this._api);
  @override
  Future<bool> isActive() async => await _api.available();
}

class PaypalApi {
  available() {}

}

class MasterCardApi {
  isOnline(){}
}

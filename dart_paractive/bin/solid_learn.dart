// Use this as interface
abstract class EncryptionAlgorithm {
  String encrypt(); // <-- abstraction
}

class AlgoAES implements EncryptionAlgorithm {
  @override
  String encrypt() {
    // TODO: implement encrypt
    throw UnimplementedError();
  }
}

class AlgoRSA implements EncryptionAlgorithm {
  @override
  String encrypt() {
    // TODO: implement encrypt
    throw UnimplementedError();
  }
}

class AlgoSHA implements EncryptionAlgorithm {
  @override
  String encrypt() {
    // TODO: implement encrypt
    throw UnimplementedError();
  }
}

class FileManager {
  void secureFile(EncryptionAlgorithm algo) {
    algo.encrypt();
  }
}

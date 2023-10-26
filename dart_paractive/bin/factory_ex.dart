abstract class EncryptionAlgo {
  EncryptionAlgo();
  // ignore: non_constant_identifier_names
  factory EncryptionAlgo.AESEncryption() = AESEncryption;
  // ignore: non_constant_identifier_names
  factory EncryptionAlgo.RSAEncryption() = RSAEncryption;
  // ignore: non_constant_identifier_names
  factory EncryptionAlgo.BlowfishEncryption() = BlowfishEncryption;
  void decrypt(String filePath);
}

class AESEncryption extends EncryptionAlgo {
  @override
  void decrypt(String filePath) {
    // TODO: implement decrypt
  }
}

class RSAEncryption extends EncryptionAlgo {
  @override
  void decrypt(String filePath) {
    // TODO: implement decrypt
  }
}

class BlowfishEncryption extends EncryptionAlgo {
  @override
  void decrypt(String filePath) {
    // TODO: implement decrypt
  }
}

import 'solid_learn.dart';

void main(List<String> args) {
  final fm = FileManager();
  fm.secureFile(AlgoAES());
  fm.secureFile(AlgoRSA());
}

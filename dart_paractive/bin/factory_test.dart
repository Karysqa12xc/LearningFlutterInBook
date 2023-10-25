// ignore_for_file: public_member_api_docs, sort_constructors_first

class FactoryDart {
  final String _firstName;
  final String _lastName;
  FactoryDart(
    this._firstName,
    this._lastName,
  );

  // ignore: non_constant_identifier_names
  factory FactoryDart.admin(bool admin) {
    if (admin) {
      return Admin(specialAdminField: 123, firstName: 'a', lastName: 'b');
    } else {
      return FactoryDart("c", "d");
    }
  }
}

class Admin extends FactoryDart {
  final double specialAdminField;
  
  Admin({required this.specialAdminField, required String firstName, required String lastName}) : super(firstName, lastName);
  
}

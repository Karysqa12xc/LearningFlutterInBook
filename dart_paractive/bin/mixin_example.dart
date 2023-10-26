import 'dart:math';
mixin BallSports{
  void playWith() => print('Ball');
  double ballVolume(double radius) {
    const values = 4 / 3 * 3.14;
    return values * pow(radius, 3);
  }
}
abstract class FootballTeam with BallSports{
  String name();
}

class RealMarid extends FootballTeam {
  @override
  String name() {
    // TODO: implement name
    throw UnimplementedError();
  }
}

class LiverpoolFC extends FootballTeam {
  @override
  String name() {
    // TODO: implement name
    throw UnimplementedError();
  }
}

abstract class VolleyballTeam with BallSports{
  String nameAndAbbreviation();
}

class TeamA extends VolleyballTeam {
  @override
  String nameAndAbbreviation() {
    // TODO: implement nameAndAbbreviation
    throw UnimplementedError();
  }
}

class TeamB extends VolleyballTeam {
  @override
  String nameAndAbbreviation() {
    // TODO: implement nameAndAbbreviation
    throw UnimplementedError();
  }
}

abstract class Worker {
  void work();
  
}
abstract class Sleeper {
  void sleep();
}

class Human implements Worker, Sleeper {
  @override
  void sleep() => print("I need 10 hours per night");

  @override
  void work() => print("I do sa lot of work");
}

class Robot implements Worker {
  @override
  void work() {
    print("I always work");
  }
}

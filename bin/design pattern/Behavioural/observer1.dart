void main(List<String> args) {
  Student ahmed = Student('Ahmed');
  Student mo = Student('Mo');
  Student hassan = Student('hassan');
  Student wessam = Student('wessam');

  Course java = Course('Java');
  java.subscribe(ahmed);
  java.subscribe(mo);
  java.subscribe(hassan);
  java.subscribe(wessam);

  java.setAvailability(true);
  print('--------------');
  java.unsubscribe(wessam);
  java.setAvailability(true);
  print('--------------');
  java.setAvailability(false);
}

abstract class Subject {
  void subscribe(Observer observer);
  void unsubscribe(Observer observer);
  void notifyAllSubscribers();
}

class Course implements Subject {
  final String _name;
  String _availability = '';

  final List<Observer> _observerList = [];

  Course(this._name);

  void setAvailability(bool available) {
    _availability = _name + (available ? ' available' : ' not available');
    notifyAllSubscribers();
    
  }

  @override
  void notifyAllSubscribers() {
    for (var element in _observerList) {
      element.update(_availability);
    }
  }

  @override
  void subscribe(Observer observer) {
    _observerList.add(observer);
  }

  @override
  void unsubscribe(Observer observer) {
    _observerList.remove(observer);
  }

}

abstract class Observer {
  void update(String message);
}

class Student implements Observer {
  final String _name;

  Student(this._name);

  @override
  void update(String message) {
    print('$_name has new notification: $message');
  }
}

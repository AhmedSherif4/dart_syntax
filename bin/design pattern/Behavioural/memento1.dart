// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Originator originator = Originator();
  CareTaker careTaker = CareTaker();

  originator.setState('state#1');
  originator.setState('state#2');
  careTaker.add(originator.saveStateToMemento());

  originator.setState("State #3");
  careTaker.add(originator.saveStateToMemento());

  originator.setState("State #4");

  print("Current State: " + originator.getState());

  originator.getStateFromMemento(careTaker.get(0));
  print("First saved State: " + originator.getState());

  originator.getStateFromMemento(careTaker.get(1));
  print("Second saved State: " + originator.getState());
}

class Memento { // بياخد الحالة ويديها.. هو الوسيط
  String state;

  Memento({
    required this.state,
  });

  String getState() {
    return state;
  }
}

class Originator { // هو اللي بيخلق الحالة.. وبيستعين بالحالة
  late String state;

  void setState(String stateF) {
    state = stateF;
  }

  String getState() {
    return state;
  }

  Memento saveStateToMemento() {
    return Memento(state: state);
  }

  void getStateFromMemento(Memento memento) {
    state = memento.getState();
  }
}

class CareTaker { // اللي بيتخزن فيه
  List<Memento> mementoList = [];

  void add(Memento state) {
    mementoList.add(state);
  }

  Memento get(int index) {
    return mementoList[index];
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  ElliFeha mohsen = ElliFeha();

  Player wewe = Player(subject: mohsen, name: 'wewe');
  Player bodi = Player(subject: mohsen, name: 'bodi');
  Player koki = Player(subject: mohsen, name: 'koki');
  Player nono = Player(subject: mohsen, name: 'nono');

  wewe.edrab();
  
}

abstract class Subject {
  final List<Observer> _players = [];

  void setState(String state);

  String getState();

  void attach(Observer player) {
    _players.add(player);
  }

  void detach(Observer player) {
    _players.remove(player);
  }

  void notifyAllPlayers() {
    _players.forEach((eachPlayer) => eachPlayer.update());
  }
}

abstract class Observer {
  Subject? subject;
  void update();
}

class ElliFeha extends Subject {
  String _state = 'Silent';

  @override
  void setState(String state) {
    _state = state;
    notifyAllPlayers();
  }

  @override
  String getState() {
    return _state;
  }
}

class Player extends Observer {
  final Subject subject;

  final String name;

  Player({
    required this.subject,
    required this.name,
  }) {
    subject.attach(this);
  }

  void edrab() {
    subject.setState('Ayyyye!');
  }

  @override
  void update() {
    print('$name heard Mohsen\'s ayyy!');
  }
}

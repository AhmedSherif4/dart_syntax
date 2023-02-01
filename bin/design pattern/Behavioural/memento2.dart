// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Originator originator = Originator();
  CareTaker careTaker = CareTaker();

  originator.setState('Ahmed', 0);
  originator.setState('Ahmed2', 10);// خلي بالك ان  دي بس اللي اتسجلت مش اللي قبلها
  careTaker.add(originator.saveStateToGame());

  originator.setState('Ahmed3', 20);
  careTaker.add(originator.saveStateToGame());

  originator.setState('Ahmed4', 30);

  print("Current State: " + originator.getState());

  originator.getStateFromGame(careTaker.get(0)); // بياخد الاول القيمة من الخزان.. 
  print("First saved State: " + originator.getState()); // بعد كدا بيطبعها 

  originator.getStateFromGame(careTaker.get(1));
  print("Second saved State: " + originator.getState());
}

class Game {
  String playerName;
  int playerScore;

  Game({
    required this.playerName,
    required this.playerScore,
  });

  String getName() {
    return playerName ;
  }
  int getScore() {
    return playerScore ;
  }
}

class Originator { // هو اللي بيخلق الحالة.. وبيستعين بالحالة
 late String playerName;
  late int playerScore;

  void setState(String playerNameF, int playerScoreF) {
    playerName = playerNameF;
    playerScore = playerScoreF;
  }

   String getState() {
    return 'Player name is: $playerName \n Player score is: $playerScore';
  }

  Game saveStateToGame() {
    return Game(playerName: playerName, playerScore: playerScore);
  }

  void getStateFromGame(Game game) {
    playerName = game.getName();
    playerScore = game.getScore();
  }
}

class CareTaker { // اللي بيتخزن فيه
  List<Game> mementoList = [];

  void add(Game state) {
    mementoList.add(state);
  }

  Game get(int index) {
    return mementoList[index];
  }
}

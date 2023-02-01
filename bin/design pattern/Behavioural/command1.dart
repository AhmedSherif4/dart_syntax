void main(List<String> args) {
  Invoker osama = Invoker();
  print('-------- First Month --------');

  Receiver amAly = Receiver(0);
  SendMoneyCommand sendMoney = SendMoneyCommand(amAly, 1000);
  osama.execute(sendMoney);

  print('-------- Second Month --------');

  Receiver amHossam = Receiver(1);
  Receiver amFaroq = Receiver(2);
  SendMoneyToAllCommand sendAllMoney =
      SendMoneyToAllCommand([amAly, amHossam, amFaroq]);
  osama.execute(sendAllMoney);
}

abstract class Command {
  // كلاس الأمر ذاته
  void execute();
}

class Invoker {
  // دا أسامة، بياخد الطلب وينفذ تفاصيله وهو مغمض
  void execute(Command command) {
    command.execute();
  }
}

class SendMoneyCommand extends Command {
  final Receiver receiver;
  final int amountOfMoney;

  SendMoneyCommand(this.receiver, this.amountOfMoney);

  @override
  void execute() {
    // لو المبلغ ثابت هنشيل الامونت اوف ماني دي ونحط مكانها المبلغ المعروف
    receiver.sendMoney(amountOfMoney);
  }
}

class SendMoneyToAllCommand extends Command {
  final List<Receiver> allReceiver;

  SendMoneyToAllCommand(this.allReceiver);

  @override
  void execute() {
    allReceiver.forEach((receiver) {
      receiver.sendMoney(500);
    });
  }
}

class Receiver {
  final int id;

  Receiver(this.id);

  int allMoney = 0;

  void sendMoney(int amountOfMoney) {
    allMoney += amountOfMoney;
    print('Receiver $id total money = $allMoney');
  }
}

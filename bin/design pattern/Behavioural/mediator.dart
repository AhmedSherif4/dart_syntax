void main(List<String> args) {
  Mediator mediator = Mediator();
  MyCalender calender = MyCalender();
  SmartWindow smartWindow = SmartWindow();
  CoffeeMachine coffeeMachine = CoffeeMachine(myMediator: mediator);
  MovingRobot movingRobot = MovingRobot(myMediator: mediator);
  Alarm alarm = Alarm(myMediator: mediator);

  mediator.setObjects(
      alarmF: alarm,
      calenderF: calender,
      movingRobotF: movingRobot,
      coffeeMachineF: coffeeMachine,
      smartWindowF: smartWindow);
  alarm.snooze();
}

// جمع كل الميثودس اللي في كل الكلاسز هنا
// وكل واحدة تتنفذ وتتواصل مع التانية بكل سلاسة عن طريق الكلاس دا
class Mediator {
  late Alarm alarm;
  late MyCalender calender;
  late MovingRobot movingRobot;
  late CoffeeMachine coffeeMachine;
  late SmartWindow smartWindow;

  void setObjects({
    required alarmF,
    required calenderF,
    required movingRobotF,
    required coffeeMachineF,
    required smartWindowF,
  }) {
    alarm = alarmF;
    calender = calenderF;
    movingRobot = movingRobotF;
    coffeeMachine = coffeeMachineF;
    smartWindow = smartWindowF;
  }

  int getTime() {
    return calender.getTime();
  }

  void makeCoffee() {
    coffeeMachine.start();
  }

  void transport() {
    movingRobot.transport();
  }

  void ringAlarm() {
    alarm.ring();
  }

  void openWindow() {
    smartWindow.open();
  }
}

class SmartWindow {
  void open() {
    print('opening window');
  }

  void close() {
    print('closing window');
  }
}

class CoffeeMachine {
  Mediator myMediator;
  CoffeeMachine({
    required this.myMediator,
  });

  void start() {
    print('preparing coffee');
    print('finished preparing coffee');
    int day = myMediator.getTime();
    if (day == 2) {
      print('adding sugar!');
    }
    myMediator.transport();
  }
}

class MovingRobot {
  Mediator myMediator;
  MovingRobot({
    required this.myMediator,
  });

  void transport() {
    print('Robot transporting');
    print('Retched destinations');
    myMediator.ringAlarm();
    myMediator.openWindow();
  }
}

class MyCalender {
  int getTime() {
    int dayOfWeek = DateTime.now().weekday; // monday = 1, sunday=7
    return dayOfWeek;
  }
}

class Alarm {
  Mediator myMediator;
  Alarm({
    required this.myMediator,
  });

  void snooze() {
    int day = myMediator.getTime();
    if (day != 5 && day != 6) {
      myMediator.makeCoffee();
    }
  }

  void ring() {
    print('ringing!');
  }
}

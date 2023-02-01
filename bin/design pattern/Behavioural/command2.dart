// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Light l1 = Light(place: 'Room');
  Fan f1 = Fan(place: 'place');

  Command lightOn = LightONCommand(light: l1);
  Command lightOff = LightOffCommand(light: l1);

  Command fanSpeedUp = FanSpeedUpCommand(fan: f1);
  Command fanSpeedDown = FanSpeedDownCommand(fan: f1);

  Remote remote = Remote();

  remote.setCommand(0, lightOn, lightOff);
  remote.setCommand(1, fanSpeedUp, fanSpeedDown);

  remote.onButtonPressed(0);
  remote.offButtonPressed(0);

  remote.undoButtonPressed();
  remote.undoButtonPressed();
  remote.undoButtonPressed();
  remote.undoButtonPressed();

  remote.onButtonPressed(1);
  remote.onButtonPressed(1);
  remote.onButtonPressed(1);
  remote.onButtonPressed(1);
  remote.onButtonPressed(1);
  remote.offButtonPressed(1);
  remote.offButtonPressed(1);
  remote.offButtonPressed(1);
  remote.offButtonPressed(1);
  remote.offButtonPressed(1);
  remote.offButtonPressed(1);
  remote.offButtonPressed(1);
  remote.undoButtonPressed();
  remote.undoButtonPressed();
  remote.undoButtonPressed();
  remote.undoButtonPressed();
}

abstract class Command {
  void execute();
  void unexecute();
}

class NoCommand implements Command {
  @override
  void execute() {
    // TODO: implement execute
  }

  @override
  void unexecute() {
    // TODO: implement unexecute
  }
}

class Fan {
  int speed;
  final String place;
  Fan({
    this.speed = 0,
    required this.place,
  });

  void speedUp() {
    speed = (speed + 1) % 5; // المستويات بتاعت سرعة المروحة 4 بس
    if (speed == 0) {
      print('the speed now is $speed for fan in $place');
    } else {
      print('increasing fan speed in $place to $speed');
    }
  }

  void speedDown() {
    speed = (speed - 1) % 5; // المستويات بتاعت سرعة المروحة 4 بس
    if (speed == 5) {
      print('the speed now is $speed for fan in $place');
    } else {
      print('decreasing fan speed in $place to $speed');
    }
  }
}

class Light {
  final String place;
  Light({
    required this.place,
  });

  void lightOn() {
    print('The light in $place is ON now');
  }

  void lightOff() {
    print('The light in $place is OFF now');
  }
}

class FanSpeedUpCommand implements Command {
  final Fan fan;
  FanSpeedUpCommand({
    required this.fan,
  });

  @override
  void execute() {
    fan.speedUp();
  }

  @override
  void unexecute() {
    fan.speedDown();
  }
}

class FanSpeedDownCommand implements Command {
  final Fan fan;
  FanSpeedDownCommand({
    required this.fan,
  });

  @override
  void execute() {
    fan.speedDown();
  }

  @override
  void unexecute() {
    fan.speedUp();
  }
}

class LightONCommand implements Command {
  final Light light;
  LightONCommand({
    required this.light,
  });

  @override
  void execute() {
    light.lightOn();
  }

  @override
  void unexecute() {
    light.lightOff();
  }
}

class LightOffCommand implements Command {
  final Light light;
  LightOffCommand({
    required this.light,
  });

  @override
  void execute() {
    light.lightOff();
  }

  @override
  void unexecute() {
    light.lightOn();
  }
}

class Remote {
  late final List<Command> onCommand;
  late final List<Command> offCommand;
  late Command lastCommandExecuted;

  Remote() {
    onCommand = List.filled(2, NoCommand(), growable: true);
    offCommand = List.filled(2, NoCommand(), growable: true);
    lastCommandExecuted = NoCommand();
    /* for (var i = 0; i < onCommand.length; i++) {
      onCommand[i] = NoCommand();
      offCommand[i] = NoCommand();
    } */
  }

  void setCommand(int index, Command onCommand_f, Command offCommand_f) {
    onCommand[index] = onCommand_f;
    offCommand[index] = offCommand_f;
  }

  void onButtonPressed(int index) {
    onCommand[index].execute();
    lastCommandExecuted = onCommand[index];
  }

  void offButtonPressed(int index) {
    offCommand[index].execute();
    lastCommandExecuted = offCommand[index];
  }

  int counterPressing = 0;
  void undoButtonPressed() {
    counterPressing++;
    counterPressing % 2 == 0
        ? lastCommandExecuted.execute()
        : lastCommandExecuted.unexecute();
  }
}

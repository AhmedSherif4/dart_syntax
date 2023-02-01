// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

void main(List<String> args) {
  GumballMachine gumballMachine = GumballMachine(count: 2);
  print(gumballMachine);
  gumballMachine.insertQuarter();
  print(gumballMachine);
  gumballMachine.turnCrank();
  print(gumballMachine);
  gumballMachine.insertQuarter();
  print(gumballMachine);
  gumballMachine.turnCrank();
  print(gumballMachine);

  gumballMachine.refill(5);
  print(gumballMachine);

  gumballMachine.insertQuarter();
  print(gumballMachine);
  gumballMachine.turnCrank();
  print(gumballMachine);
}

abstract class State {
  void insertQuarter(); // انك تحط ربع جنية
  void ejectQuarter(); // انك تسحبه
  void turnCrank(); // انك تنزل اللبانة
  void dispense(); // انك تسحب اللبانة
  void refill(); // انك تملى المكنة
}

class HasQuarterState implements State {
  Random random = Random();
  GumballMachine gumballMachine;
  HasQuarterState(
    this.gumballMachine,
  );

  @override
  void dispense() {
    print('no gumball dispensed');
  }

  @override
  void ejectQuarter() {
    print('Quarter returned');
  }

  @override
  void insertQuarter() {
    print('You can not insert another quarter till we finish!');
  }

  @override
  void refill() {}

  @override
  void turnCrank() {
    print('You turned');
    int winner = random.nextInt(10);
    if ((winner == 0) && (gumballMachine.getCount() > 1)) {
      gumballMachine.setState(gumballMachine.getWinner());
    } else {
      gumballMachine.setState(gumballMachine.getSold());
    }
  }

  @override
  String toString() {
    return 'you added a quarter';
  }
}

class NoQuarterState implements State {
  GumballMachine gumballMachine;
  NoQuarterState(
    this.gumballMachine,
  );

  @override
  void dispense() {
    print('you need to pay first');
  }

  @override
  void ejectQuarter() {
    print('You have not inserted a quarter');
  }

  @override
  void insertQuarter() {
    print('You inserted the quarter');
    gumballMachine.setState(gumballMachine.getHasQuarter());
  }

  @override
  void refill() {}

  @override
  void turnCrank() {
    print('you turned, but there is no quarter');
  }

  @override
  String toString() {
    return 'waiting for quarter';
  }
}

class SoldOutState implements State {
  GumballMachine gumballMachine;
  SoldOutState(
    this.gumballMachine,
  );

  @override
  void dispense() {
    print('No gumball dispensed');
  }

  @override
  void ejectQuarter() {
    print('you can not eject, you have not insert a quarter yet');
  }

  @override
  void insertQuarter() {
    print('you can not insert a quarter right now, the machine is sold out');
  }

  @override
  void refill() {
    gumballMachine.setState(gumballMachine.getNoQuarterState());
  }

  @override
  void turnCrank() {
    print('you turned, but there are no gumballs');
  }

  @override
  String toString() {
    return 'Sold Out!!';
  }
}

class SoldState implements State {
  GumballMachine gumballMachine;
  SoldState(
    this.gumballMachine,
  );

  @override
  void dispense() {
    gumballMachine.releaseBall();
    if (gumballMachine.count > 0) {
      gumballMachine.setState(gumballMachine.noQuarterState);
    } else {
      print('ops! outta gumballs');
      gumballMachine.setState(gumballMachine.getSoldOut());
    }
  }

  @override
  void ejectQuarter() {
    print('sorry, you already turned the crank');
  }

  @override
  void insertQuarter() {
    print('please wait, we are already give you a gumball');
  }

  @override
  void refill() {
    // TODO: implement refill
  }

  @override
  void turnCrank() {
    print('turned twice does not give you another gumball');
  }

  @override
  String toString() {
    return 'sold state now';
  }
}

class GumballMachine {
  late State hasQuarterState;
  late State noQuarterState;
  late State soldOutState;
  late State soldState;
  late State winnerState;

  late State state;
  int count;

  GumballMachine({required this.count}) {
    hasQuarterState = HasQuarterState(this);
    noQuarterState = NoQuarterState(this);
    soldOutState = SoldOutState(this);
    soldState = SoldState(this);
    winnerState = WinnerState(this);

    if (count > 0) {
      state = noQuarterState;
    } else {
      state = soldOutState;
    }
  }

  void insertQuarter() {
    state.insertQuarter();
  }

  void ejectQuarter() {
    state.ejectQuarter();
  }

  void turnCrank() {
    state.turnCrank();
    state.dispense();
  }

  void releaseBall() {
    // بتعرفه ان اتسحب لبانة وبتنقصها مالعداد هنا
    print('a gumball comes rolling out the slot');
    if (count != 0) {
      count = count - 1;
    }
  }

  int getCount() {
    return count;
  }

  void refill(int countF) {
    count = count + countF;
    print('the gumball machine was just refill, the new count is : $count');
    state.refill();
  }

  void setState(State stateF) {
    state = stateF;
  }

  State getState() {
    return state;
  }

  State getNoQuarterState() {
    return noQuarterState;
  }

  State getHasQuarter() {
    return hasQuarterState;
  }

  State getSoldOut() {
    return soldOutState;
  }

  State getSold() {
    return soldState;
  }

  State getWinner() {
    return winnerState;
  }

  @override
  String toString() {
    String result = 'Standing gumball \n'
        'Inventory: $count ${(count > 1) ? 'gumballs' : 'gumball'} \n'
        'machine is $state \n';

    return result;
  }
}

class WinnerState implements State {
  GumballMachine gumballMachine;
  WinnerState(
    this.gumballMachine,
  );

  @override
  void dispense() {
    gumballMachine.releaseBall();
    if (gumballMachine.getCount() == 0) {
      gumballMachine.setState(gumballMachine.getSoldOut());
    } else {
      gumballMachine.releaseBall();
      print('You are a winner!! you got two gumballs for your quarter');
      if (gumballMachine.getCount() > 0) {
        gumballMachine.setState(gumballMachine.noQuarterState);
      } else {
        print('ops! otta gumballs');
        gumballMachine.setState(gumballMachine.soldOutState);
      }
    }
  }

  @override
  void ejectQuarter() {
    print('please wait we are already give you a gumball');
  }

  @override
  void insertQuarter() {
    print('please wait we are already give you a gumball');
  }

  @override
  void refill() {
    // TODO: implement refill
  }

  @override
  void turnCrank() {
    print('turning again does not give you another gumball');
  }
}

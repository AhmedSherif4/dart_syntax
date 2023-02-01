// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Companies a = CompanyA();
  Companies b = CompanyB();
  List<Companies> list = [a, b];

  IteratorMan theMan = IteratorMan(listOfCompanies: list);
  theMan.printAllEmployees();
}

abstract class Companies {
  MyIterator getIterator();
}

class CompanyA implements Companies {
  List<String> employees = [];

  CompanyA() {
    addEmployee('Ahmed');
    addEmployee('Nono');
    addEmployee('Hassan');
  }

  void addEmployee(String employee) {
    employees.add(employee);
  }

  @override
  MyIterator getIterator() {
    MyIterator iterator = ListIterator(myList: employees);
    return iterator;
  }
}

class CompanyB implements Companies {
  Set<String> employees = {};

  CompanyB() {
    addEmployee('Mohamed');
    addEmployee('Adel');
    addEmployee('Mohsen');
  }

  void addEmployee(String employee) {
    employees.add(employee);
  }

  @override
  MyIterator getIterator() {
    MyIterator iterator = SetIterator(myList: employees);
    return iterator;
  }
}

class IteratorMan {
  List<Companies> listOfCompanies;
  IteratorMan({
    required this.listOfCompanies,
  });

  void printAllEmployees() {
    for (var i = 0; i < listOfCompanies.length; i++) {
      printingAllEmployees(listOfCompanies[i].getIterator());
    }
  }

  void printingAllEmployees(MyIterator i) {
    while (i.hasNext()) {
      print(i.next());
    }
  }
}

abstract class MyIterator {
  bool hasNext();
  Object next();
}

class ListIterator implements MyIterator {
  List<Object> myList;
  int position = 0;
  ListIterator({
    required this.myList,
  });

  @override
  bool hasNext() {
    if (position >= myList.length) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Object next() {
    Object temp = myList[position];
    position++;
    return temp;
  }
}

class SetIterator implements MyIterator {
  Set<Object> myList;
  int position = 0;
  SetIterator({
    required this.myList,
  });

  @override
  bool hasNext() {
    if (position >= myList.length) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Object next() {
    Object temp = myList.elementAt(position);
    position++;
    return temp;
  }
}

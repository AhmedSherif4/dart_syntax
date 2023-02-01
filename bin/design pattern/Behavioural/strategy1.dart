// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Mechanic belia = Mechanic();
  print('Toyota car entered garage');
  belia.setAlgorithm(Toyota());
  belia.disassembleCar();

  print('BMW car entered garage');
  belia.setAlgorithm(BMW());
  belia.disassembleCar();
}

abstract class Algorithm {
  void performAlgorithm();
}

class Toyota implements Algorithm {
  // التعامل مع الحالة الخاصة او النوع الخاص دا
  @override
  void performAlgorithm() {
    print('Performing Toyota disassembly algorithm');
  }
}

class BMW implements Algorithm {
  @override
  void performAlgorithm() {
    print('Performing BMW disassembly algorithm');
  }
}

class Mechanic {
  Algorithm? _algorithm;

  void setAlgorithm(Algorithm algorithm) {
    // هايعرف نوع العربية اية
    _algorithm = algorithm;
  }

  void disassembleCar() {
    // هايتعامل على أساس نوعها

    // لازم يكون فيه قيمة عشان هيكون استخدم الفانكشن اللي فوق وعرف اية النوع اللي هايشتغل عليه
    _algorithm!.performAlgorithm();
  }
}

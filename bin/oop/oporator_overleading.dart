// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(List<String> args) {
  Point p1 = Point(y: 5, x: 3, z: 4);
  Point p2 = Point(y: 5, x: 3, z: 4);

  Point p3 = p1 + p2;
  print(p3);

  if (p1==p2) {
    print('they are equal!');
  }else{
    print('not equal!');
  }


}

class Point {
  num x, z, y;
  Point({
    required this.y,
    required this.x,
    required this.z,
  });

  // عشان نقدر نجمع مابين عنصرين نوعهم جديد لازم نعمل الكود دا
  // عملاة + هي الاوبوريتور اللي احنا محددين التعامل معاه
  //اللي مابين القوسين هو النوع اللي هايبقى الناحية التانية
  // بنتعامل مع الكلاس دا ب زيس
  operator +(Point p) {
    return Point(
      y: y + p.y,
      x: x + p.x,
      z: z + p.z,
    );
  }

  operator -(Point p) {
    return Point(
      y: y - p.y,
      x: x - p.x,
      z: z - p.z,
    );
  }

  operator *(Point p) {
    return Point(
      y: y * p.y,
      x: x * p.x,
      z: z * p.z,
    );
  }

  operator /(Point p) {
    return Point(
      y: y / p.y,
      x: x / p.x,
      z: z / p.z,
    );
  }

  operator %(Point p) {
    return Point(
      y: y % p.y,
      x: x % p.x,
      z: z % p.z,
    );
  }

// لازم تتحقق الأول إذا كان الاوبجيكت هو نفس نوع الكلاس ولا لأ
  bool operator == (p) {
    return (p is Point && p.x==x && p.z==z && p.y==y );
  }

  @override
  String toString() {
    return 'y: $y , x: $x , z: $z';
  }
}


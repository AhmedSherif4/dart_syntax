// ignore_for_file: file_names

main(List<String> args) {
  var x = 10;
  if (x > 0) {
    print("posative");
  } else if (x < 0) {
    print("negative");
  } else {
    print("zero");
  }

  var c = 5;
  if (c > 0) {
    print("posative");
  } else if (c < 0) {
    print("negative");
  } else {
    print(0);
  }

  var h = 5;
  if (h == c) {
    // لو الاتنين بيساووا بعض، هايخش الكود، لو مش بيساووا بعض مش هايخش الكود خالص
    if (h != c) {
      print("No");
    } else if (h == c) {
      print("nice");
    }
  } else {
    print("bad");
  }

  int b = 2;
  int a = 3;
  a > b ? print("$a is bigger") : print("$b is bigger");

  int biggernum;
  //if (a>b){biggernum=a;}
  //else {biggernum=b;}
  // other way:
  biggernum = a > b ? a : b;
  print("$biggernum is bigger");

// السمولنم يساوي (لو الاية اصغر من البي) يبقى يساوي اية، غير كدا يساوي بي
  int smallernum = a < b ? a : b;
  print("$smallernum is smaller");

  var name = null;
  // هل النيم فيه ناتج؟ لو مافيهوش يبقى اطبعه كذا
  var v1 = name ?? "please put your name";
  print(v1);


// حالة تانية من حالات إف
  var babe = "noone";
  switch (babe) {
    case "Soso":
      print("soso");
      break;
      case "nadia":
      print("nadia");
      break;
      default:
      print("wtf where's my gf");
      break;
  }
//بوضح هنا ان الكود ممكن يتعمل بشكل مختلف ولكن بعد كدا لما نبقى محترفين هانعرف نستخدم اية امتى
// بس بشكل مبدئي، الاتنين واحد
  if (babe == "fd") {
    print("wow"); 
  }
  else{print("gheeee");}
}

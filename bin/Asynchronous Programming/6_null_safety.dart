// ignore_for_file: file_names
void main(List<String> args) {

  String? favColor = null; // ? يعني القيمة ممكن تكون سترينج وممكن تكون نول
  
  setBackGroundColor(favColor);

}

String? backGroundColor;

setBackGroundColor(String? Color) {
  if (Color == null) {print("THe Fav Color is empty"); return;} // لو القيمة نول، ماتكملش الفانكشن اصلا
  else{String backGroundColor = Color;
  print("Fav Color is $backGroundColor");}
}

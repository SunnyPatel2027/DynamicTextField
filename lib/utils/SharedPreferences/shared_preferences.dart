import 'package:shared_preferences/shared_preferences.dart';

isGujarati(isGuju, lang) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setBool("Gujarati", isGuju);
  sharedPreferences.setBool("selected", lang);
}

removeLang() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.remove("Gujarati");
  sharedPreferences.remove("selected");
}

//for checking user is here
isLogin(isLogin) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setBool("isLogin", isLogin);
}

removeLogin() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.remove("isLogin");
}

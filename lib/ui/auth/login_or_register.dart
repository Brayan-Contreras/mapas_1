import 'package:flutter/material.dart';
import 'package:mapas_1/ui/pages/home/login_page.dart';
import 'package:mapas_1/ui/pages/home/register_page.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister>{
  bool showLoginPage = true;
  //metodo de alternancia entre las 2 paginas de registro y login
  void togglePages(){
    setState((){
      showLoginPage= !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context){
    if(showLoginPage){
      return LoginPage(onTap: togglePages);
    }else{
      return RegisterPage(onTap: togglePages);
    }


    return const Placeholder();
  }
} 
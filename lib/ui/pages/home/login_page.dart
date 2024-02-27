import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mapas_1/ui/components/text_field.dart';
import 'package:mapas_1/ui/components/button.dart';
//import 'package:mapas_1/ui/components/text_field.dart';

class LoginPage extends StatefulWidget{
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override 
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final emailTextController=TextEditingController();
  final passwordTextController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(height: 25,), //50
              //Hello
              Text(
                'Hola :)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36), 
              ),

              const SizedBox(height: 10,),
              Text(
                'Bienvenido!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), 
              ),

              const SizedBox(height: 50),
               //email
              MyTextField(
                controller: emailTextController, 
                hintText: 'Email', 
                obscureText: false),
            
              const SizedBox(height: 10),

              //password
              MyTextField(
                controller: passwordTextController, 
                hintText: 'Contraseña', 
                obscureText: true),

              const SizedBox(height: 10),

              //sign up button
              MyButton(onTap: (){}, text:'Sign In'),
            
              const SizedBox(height: 25),
              //not a member? registrate
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('No tienes cuenta?', style: TextStyle(fontWeight:FontWeight.bold)),
                  GestureDetector(
                    onTap:widget.onTap,
                    child:Text(' Registrate', style: TextStyle(color: Colors.blue, fontWeight:FontWeight.bold)),
            
                  ),
                ],
              ),
            
            ],),
          ),
        )
      ,)
      );
    

  }
}
import 'package:flutter/material.dart';
import 'package:untitled2/pallete.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled2/widgets//widgets.dart';


class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        BackgroundImage(image:
        'assets/images/money.jpg'
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body:  Column(
            children:   [
              Flexible(child: Center(
                child: Text('MoneyMakeMoney', style: TextStyle(
                  color: Colors.white , fontSize: 45,fontWeight: FontWeight.bold
                ),
                ),
              ),
              ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(icon: FontAwesomeIcons.envelope,
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputType: TextInputType.visiblePassword,
                    inputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: ()=>Navigator.pushNamed(
                        context,
                       'ForgotPassword'
                    ),
                    child: Text(
                      'Forgot Password',
                      style: kBodyText,
                    ),
                  ),
                  RoundedButton(buttonName: 'Login',),
                  SizedBox(
                    height: 25,
                  ),
                    ],
                  ),
              GestureDetector(
                onTap: ()=>Navigator.pushNamed(
                    context,
                    'CreateNewAccount'
                ),
                child: Container(child: Text(
                  'Create New Account',
                  style: kBodyText,
                  ),
                  decoration: BoxDecoration(border:
                  Border(bottom: BorderSide(
                      width: 1,
                      color: kWhite)
                  )
                  ),
                  ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}








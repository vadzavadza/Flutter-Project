import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled2/pallete.dart';
import 'package:untitled2/widgets/widgets.dart';

class CreateNewAccount extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/RegMoney.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body : SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
              Stack(
                children: [
                  Center(
                    child: ClipOval(

                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2,
                        sigmaY: 2
                        ),
                        child: CircleAvatar(
                          radius:size.width * 0.14,
                          backgroundColor: Colors.grey[400]?.withOpacity(
                              0.5,
                          ),
                          child: Icon(
                            FontAwesomeIcons.user,
                          color: kWhite,
                            size: size.width * 0.1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.08,
                    left: size.height * 0.35,
                    child: Container(
                      height: size.width * 0.1,
                      width: size.width * 0.08,
                      decoration: BoxDecoration(
                        color: kBlue,
                        shape: BoxShape.circle,
                        border: Border.all(color: kWhite,
                        width: 1
                        ),
                      ),
                      child: Icon(FontAwesomeIcons.arrowUp,
                      color: kWhite,
                      ),
                    ),
                  )
                ],
              ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    TextInputField(icon:FontAwesomeIcons.user ,
                        hint: 'User',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next),
                    TextInputField(icon: FontAwesomeIcons.envelope,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction:TextInputAction.next
                    ),
                    PasswordInput(icon: FontAwesomeIcons.lock,
                        hint: 'Password',
                        inputAction: TextInputAction.next,),
                    PasswordInput(icon: FontAwesomeIcons.lock,
                      hint: 'Confirm Password',
                      inputAction: TextInputAction.done,),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(buttonName: 'Register'),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Alreade have an account?',
                        style: kBodyText
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,
                                '/' );
                          },
                          child: Text('Login',
                              style: kBodyText.copyWith(color: kBlue,
                              fontWeight: FontWeight.bold
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )

            ],),
          )
        )
      ],
    );
  }
}


import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Avenir',
    textTheme:textTheme(),
  );
}

TextTheme textTheme(){
  return TextTheme(
    headline1: TextStyle(
  color: Colors.white,
      fontSize:32,
      fontWeight:FontWeight.bold,
  ),
    headline2: TextStyle(
    color: Colors.white,
    fontSize:24,
    fontWeight:FontWeight.bold,
  ),
  headline3: TextStyle(
    color: Colors.white,
    fontSize:18,
    fontWeight:FontWeight.bold,
  ),
  headline4: TextStyle(
    color: Colors.white,
    fontSize:16,
    fontWeight:FontWeight.bold,
  ),
  headline5: TextStyle(
  color: Colors.white,
  fontSize:14,
  fontWeight:FontWeight.bold,
  ),
  headline6: TextStyle(
  color: Colors.white,
  fontSize:14,
  fontWeight:FontWeight.normal,
  ),
  bodyText1: TextStyle(
  color: Colors.white,
  fontSize:12,
  fontWeight:FontWeight.normal,
  ),
  bodyText2: TextStyle(
  color: Colors.white,
  fontSize:10,
  fontWeight:FontWeight.normal,
  ),


  );
}
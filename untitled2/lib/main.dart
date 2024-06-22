import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/config/app-router.dart';
import 'package:untitled2/config/theme.dart';
import 'package:untitled2/wishlist-blocs/wishlist_bloc.dart';
import 'screens/screens.dart';
import 'widgets/widgets.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) =>WishlistBloc()..add(StartWishlist())),

      ],
      child: MaterialApp(
        title: 'MoneyMakeMoney',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}

/*void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoneyMakeMoney',
      theme: ThemeData( //theme()  
        textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute:'/' ,// HomeScreen.routeName
      routes: {
        '/':(context)=> LoginScreen(),
        'ForgotPassword':(context)=> ForgotPassword(),
        'CreateNewAccount':(context)=>CreateNewAccount(),
      },
    );
  }
}*/








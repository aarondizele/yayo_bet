import 'package:flutter/material.dart';

// import 'backdrop.dart';
// import 'category_menu_page.dart';

import 'models/category.dart';
import 'screens/bet_screen.dart';
import 'screens/category_screen.dart';
import 'screens/confirmation_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/payment_screen.dart';
import 'screens/signup_screen.dart';

const String title = "YAYO";

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Category _currentCategory = Category.football;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Rubik'),
      // home: Backdrop(
      //   currentCategory: _currentCategory,
      //   frontLayer: HomeScreen(title: title),
      //   backLayer: CategoryMenuPage(
      //     currentCategory: _currentCategory,
      //     onCategoryTap: _onCategoryTap,
      //   ),
      //   frontTitle: Text('YAYO'),
      //   backTitle: Text('CATEGORIES'),
      // ),
      home: HomeScreen(),
      initialRoute: '/signup-screen',
      routes: {
        '/bet-screen': (BuildContext context) => BetScreen(),
        '/category-screen': (BuildContext context) => CategoryScreen(),
        '/confirmation-screen': (BuildContext context) => ConfirmationScreen(),
        // '/detail': (BuildContext context) => DetailScreen(),
        '/home-screen': (BuildContext context) => HomeScreen(),
        '/login-screen': (BuildContext context) => LoginScreen(),
        '/payment-screen': (BuildContext context) => PaymentScreen(),
        '/signup-screen': (BuildContext context) => SignupScreen(),
      },
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/signup-screen') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => SignupScreen(),
      fullscreenDialog: true,
    );
  }
}

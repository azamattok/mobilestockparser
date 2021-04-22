import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:stocktrade/screens/chart.dart';
import 'package:stocktrade/screens/crypto.dart';
import 'package:stocktrade/screens/cryptofromdilau.dart';
import 'package:stocktrade/screens/home.dart';
import 'package:stocktrade/screens/login.dart';
import 'package:stocktrade/screens/search.dart';
import 'package:stocktrade/screens/watchlist.dart';
import 'package:stocktrade/tabs/pages/tabs_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StockTrade',
      theme: ThemeData(
        accentColor: Colors.lightBlue,
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     // home: CryptoFromDilauCurrenPage(),
      home: TabPage(),
    );
  }
}

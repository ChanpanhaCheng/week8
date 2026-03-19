import 'package:blabla/ui/screens/home/home_screen.dart';
import 'package:blabla/ui/screens/rides_selection/rides_selection_screen.dart';
import 'package:blabla/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void mainCommon(List<InheritedProvider> providers) {
  runApp(
    MultiProvider(
      providers: providers,
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _curentIndex = 0;
  final List<Widget> _page = [HomeScreen(), RidesSelectionScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, theme: blaTheme,
      home: Scaffold(
        body: _page[_curentIndex],
        bottomNavigationBar: BottomNavigationBar(currentIndex: _curentIndex,onTap: (value) {
          setState(() {
            _curentIndex=value;
          });
        },items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.motorcycle), label: "RidesSelection"),
          ]),
      ),
    );
  }
}

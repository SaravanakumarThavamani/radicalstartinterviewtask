import 'package:flutter/material.dart';
import 'package:imag/Tasks/ProviderCalculator/provider.dart';

import 'package:provider/provider.dart';
import 'Tasks/Getxcalculator/view/getxcalu.dart';
import 'Tasks/Imageupload/imagepicker.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Navigate()),
      ],
      child: const Home(),
    ),
  );
}

class Navigate with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateindex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Consumer<Navigate>(
            builder: (context, Navigates, child) {
              switch (Navigates.currentIndex) {
                case 0:
                  return Providerscreen();
                case 1:
                  return GetxCalculator();
                case 2:
                  return CustomImagePicker();
                default:
                  return Container(); // handle default case
              }
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: context.watch<Navigate>().currentIndex,
            onTap: (int index) {
              context.read<Navigate>().updateindex(index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Provider'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calculate), label: 'Getx'),
              BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Upload'),
            ],
          ),
        ),
      ),
    );
  }
}

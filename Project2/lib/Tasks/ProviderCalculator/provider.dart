import 'package:flutter/material.dart';
import 'package:imag/Tasks/ProviderCalculator/controller/controller.dart';
import 'package:imag/Tasks/ProviderCalculator/view/providercalc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderCalculatorController()),
      ],
      child: Providerscreen(),
      builder: (context, child) => ProviderCalculator()));
}

class Providerscreen extends StatefulWidget {
  const Providerscreen({super.key});
  _ProviderscreenState createState() => _ProviderscreenState();
}

class _ProviderscreenState extends State<Providerscreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderCalculatorController(),
      child: ProviderCalculator(),
    );
  }
}

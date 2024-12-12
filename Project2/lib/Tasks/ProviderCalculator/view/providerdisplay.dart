import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/controller.dart';

class ProviderCalculatorDisplay extends StatelessWidget {
  const ProviderCalculatorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final providerCalculatorController =
        Provider.of<ProviderCalculatorController>(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: Height * 0.02,
          ),
          Text(
            providerCalculatorController.secondaryOutput == '0'
                ? '0.0'
                : providerCalculatorController.secondaryOutput,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Height * 0.02,
          ),
          Text(
            providerCalculatorController.primaryOutput == '0'
                ? '0.0'
                : providerCalculatorController.primaryOutput,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
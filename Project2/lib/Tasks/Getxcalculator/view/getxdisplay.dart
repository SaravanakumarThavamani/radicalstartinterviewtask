import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class GetxCalculatorDisplay extends StatelessWidget {
  GetxCalculatorDisplay({super.key});
  final GetxCalculatorController controller =
      Get.put(GetxCalculatorController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: height * 0.02),
          Obx(
            () => Text(
              controller.ans.value == '0' ? '0.0' : controller.ans.value,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: height * 0.02),
          Obx(
            () => Text(
              controller.display.value == '0'
                  ? '0.0'
                  : controller.display.value,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

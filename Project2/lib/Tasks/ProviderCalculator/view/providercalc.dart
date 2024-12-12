import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imag/Tasks/ProviderCalculator/view/providerbtn.dart';
import 'package:imag/Tasks/ProviderCalculator/view/providerdisplay.dart';

import '../../data/data.dart';

class ProviderCalculator extends StatefulWidget {
  const ProviderCalculator({super.key});

  @override
  State<ProviderCalculator> createState() => _ProviderCalculatorState();
}

class _ProviderCalculatorState extends State<ProviderCalculator> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Calculator'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Colors.black,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              child: BottomSheet(
                  onClosing: () {},
                  backgroundColor: const Color.fromARGB(60, 225, 200, 255),
                  builder: (ctx) {
                    return GridView.builder(
                      reverse: true,
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      itemCount: buttonData.length,
                      itemBuilder: (context, index) => ProviderCalculatorBtn(
                        item: buttonData[index],
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                    );
                  }),
            ),
            const ProviderCalculatorDisplay(),
          ],
        );
      }),
    );
  }
}

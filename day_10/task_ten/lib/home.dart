import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isChecked = false;
  final textEditingController = TextEditingController();
  final ageEditingController = TextEditingController();

  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 10'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              child: Stepper(
                  currentStep: currentStep,
                  type: StepperType.horizontal,
                  onStepTapped: (int index) {
                    setState(() {
                      currentStep = index;
                    });
                  },
                  onStepContinue: () {
                    if (currentStep < 2) {
                      setState(() => currentStep += 1);
                    }
                  },
                  onStepCancel: () {
                    if (currentStep > 0) {
                      setState(() => currentStep -= 1);
                    }
                  },
                  steps: [
                    Step(
                        isActive: currentStep >= 0,
                        title: const Text(""),
                        content: Column(
                          children: [
                            TextFormField(
                              controller: textEditingController,
                              decoration: InputDecoration(
                                hintText: 'Enter your name',
                              ),
                            ),
                          ],
                        )),
                    Step(
                        isActive: currentStep >= 1,
                        title: const Text(""),
                        content: Column(
                          children: [
                            TextFormField(
                              controller: ageEditingController,
                              decoration: InputDecoration(
                                hintText: 'Enter your age',
                              ),
                            ),
                          ],
                        )),
                    Step(
                        isActive: currentStep == 2,
                        title: const Text(""),
                        content: Column(children: [
                          Text(
                            textEditingController.text,
                          ),
                          Text(ageEditingController.text,)
                        ])),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

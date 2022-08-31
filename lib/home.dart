
import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        titleSpacing: 0,
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: false,
        title: const Text('Number History', style: TextStyle(color: Colors.red),), backgroundColor: Colors.white,),
        body: ListView(
          children:  [
            ListView.builder(
              itemCount: 15,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) => ExpansionTile(title: const Text('923214227119'),
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ActionSlider.standard(
                        width: 150.0,
                        height: 30,
                        backgroundColor: Colors.grey.shade200,
                        toggleColor: Colors.red,
                        icon: const Icon(Icons.phone, size: 10,color: Colors.white,),
                        actionThresholdType: ThresholdType.release,
                        child: const Text('Call Now'),
                        action: (controller) async {
                          controller.loading(); //starts loading animation
                          await Future.delayed(const Duration(seconds: 1));
                          controller.success(); //starts success animation
                          await Future.delayed(const Duration(seconds: 1));
                          controller.reset(); //resets the slider
                        },
                      ),
                      const SizedBox(width: 15,),
                      ActionSlider.standard(
                        width: 150.0,
                        height: 30,
                        backgroundColor: Colors.grey.shade200,
                        toggleColor: Colors.red,
                        icon: const Icon(Icons.whatsapp, size: 10,color: Colors.white,),
                        actionThresholdType: ThresholdType.release,
                        child: const Text('Whats App'),
                        action: (controller) async {
                          controller.loading(); //starts loading animation
                          await Future.delayed(const Duration(seconds: 1));
                          controller.success(); //starts success animation
                          await Future.delayed(const Duration(seconds: 1));
                          controller.reset(); //resets the slider
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                    ActionSlider.standard(
                        width: 150.0,
                        height: 30,
                        backgroundColor: Colors.grey.shade200,
                        toggleColor: Colors.red,
                        icon: const Icon(Icons.close, size: 10,color: Colors.white,),
                        actionThresholdType: ThresholdType.release,
                        child: const Text('Mark as Non-'),
                        action: (controller) async {
                          controller.loading(); //starts loading animation
                          await Future.delayed(const Duration(seconds: 1));
                          controller.success(); //starts success animation
                          await Future.delayed(const Duration(seconds: 1));
                          controller.reset(); //resets the slider
                        },
                      ),
                      const SizedBox(height: 20,),
                ],
              )
            ],
            )
,)
                      ],
        ),
    );
  }
}


import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';


class Marketion extends StatefulWidget {
  const Marketion({Key? key}) : super(key: key);

  @override
  State<Marketion> createState() => _MarketionState();
}

class _MarketionState extends State<Marketion> {
  final _controller = ActionSliderController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        titleSpacing: 0,
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: false,
        title: const Text('Markiting', style: TextStyle(color: Colors.red),), backgroundColor: Colors.white,),
        body: ListView(
          children:  [
            Image.asset('asset/images/12.png'),
            const SizedBox(height: 20,),
            Center(
              child: ActionSlider.custom(
              // sliderBehavior: SliderBehavior.stretch,
              width: 300.0,
              controller: _controller,
              height: 60.0,
              toggleWidth: 60.0,
              toggleMargin: EdgeInsets.zero,
              backgroundColor: Colors.white,
              
              foregroundChild: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(Icons.check_rounded, color: Colors.white)),
              foregroundBuilder: (context, state, child) => child!,
              outerBackgroundBuilder: (context, state, child) => Card(
                margin: EdgeInsets.zero,
                color: Color.lerp(Colors.grey.shade300, Colors.green, state.position),
                child:  const Center(
                    child: Text('Next',style: TextStyle(fontSize: 18)
                        )),
              ),
              backgroundBorderRadius: BorderRadius.circular(5.0),
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
            ),
            ),
                         const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.person,size: 50,color: Colors.red,),
                              SizedBox(width: 10,),
                              Text('My Customer', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),)
                            ],
                          ) ,
                          const SizedBox(height: 20,),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  
                                  BoxShadow(
                                    offset: const Offset(4, 1),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    color: Colors.grey.shade300
                                  ),
                                  BoxShadow(
                                    offset: const Offset(1, 4),
                                    blurRadius: 5,
                                    spreadRadius: 5,
                                    color: Colors.grey.shade300
                                  )
                                ]
                              ),
                              child: const Text('923214227729', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ActionSlider.custom(
              // sliderBehavior: SliderBehavior.stretch,
                                  width: 180.0,
                                  // controller: _controller,
                                  height: 60.0,
                                  toggleWidth: 60.0,
                                  toggleMargin: EdgeInsets.zero,
                                  backgroundColor: Colors.white,
                                  
                                  foregroundChild: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Icon(Icons.phone, color: Colors.white)),
                                  foregroundBuilder: (context, state, child) => child!,
                                  outerBackgroundBuilder: (context, state, child) => Card(
                                    margin: const EdgeInsets.only(left: 50),
                                    color: Color.lerp(Colors.grey.shade300, Colors.green, state.position),
                                    child:  const Center(
                                        child: Text('Call Now',style: TextStyle(fontSize: 14)
                                            )),
                                  ),
                                  backgroundBorderRadius: BorderRadius.circular(5.0),
                                  action: (controller) async {
                                    controller.loading(); //starts loading animation
                                    await Future.delayed(const Duration(seconds: 3));
                                    controller.success(); //starts success animation
                                    await Future.delayed(const Duration(seconds: 1));
                                    controller.reset(); //resets the slider
                                  },
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Center(
                                child: ActionSlider.custom(
                                        // sliderBehavior: SliderBehavior.stretch,
                                        width: 180.0,
                                        // controller: _controller,
                                        height: 60.0,
                                        // toggleWidth: 60.0,
                                        toggleMargin: EdgeInsets.zero,
                                        backgroundColor: Colors.white,
                                        
                                        foregroundChild: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.circular(5)),
                                            child: const Icon(Icons.whatsapp, color: Colors.white)),
                                        foregroundBuilder: (context, state, child) => child!,
                                        outerBackgroundBuilder: (context, state, child) => Card(
                                          margin: const EdgeInsets.only(left: 50),
                                          color: Color.lerp(Colors.grey.shade300, Colors.green, state.position),
                                          child:  const Center(
                                              child: Text('Whats App',style: TextStyle(fontSize: 14)
                                                  )),
                                        ),
                                        backgroundBorderRadius: BorderRadius.circular(5.0),
                                        action: (controller) async {
                                          controller.loading(); //starts loading animation
                                          await Future.delayed(const Duration(seconds: 3));
                                          controller.success(); //starts success animation
                                          await Future.delayed(const Duration(seconds: 1));
                                          controller.reset(); //resets the slider
                                        },
                                      ),
                              ),
      
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Center(
                                child: ActionSlider.custom(
              // sliderBehavior: SliderBehavior.stretch,
                                  width: 300.0,
                                  // controller: _controller,
                                  height: 60.0,
                                  toggleWidth: 60.0,
                                  toggleMargin: EdgeInsets.zero,
                                  backgroundColor: Colors.white,
                                  
                                  foregroundChild: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Icon(Icons.close, color: Colors.white)),
                                  foregroundBuilder: (context, state, child) => child!,
                                  outerBackgroundBuilder: (context, state, child) => Card(
                                    margin: const EdgeInsets.only(left: 50),
                                    color: Color.lerp(Colors.grey.shade300, Colors.green, state.position),
                                    child:  const Center(
                                        child: Text('Non WhatApp Number ?',style: TextStyle(fontSize: 14)
                                            )),
                                  ),
                                  backgroundBorderRadius: BorderRadius.circular(5.0),
                                  action: (controller) async {
                                    controller.loading(); //starts loading animation
                                    await Future.delayed(const Duration(seconds: 3));
                                    controller.success(); //starts success animation
                                    await Future.delayed(const Duration(seconds: 1));
                                    controller.reset(); //resets the slider
                                  },
                                ),
                              ),
                           
                           
                           ],
        ),
    );
  }
}
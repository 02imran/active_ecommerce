

import 'package:flutter/material.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEFEA),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        titleSpacing: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Color(0xFFA56D60),),
        // centerTitle: false,
        elevation: 0,
        title: const Text('Leader Board', style: TextStyle(color: Color(0xFFA56D60)),), backgroundColor: const Color(0xFFFEEFEA),),
        // centerTitle: false,
      body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFEA7C61)
              ),
              child: const Center(child: Text('Daily', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)),
            ),

                            Container(
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // color: const Color(0xFFEA7C61)
              ),
              child: const Center(child: Text('Month', style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w400),)),
            ),

                            Container(
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // color: const Color(0xFFEA7C61)
              ),
              child: const Center(child: Text('All time', style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w400),)),
            ),
              ],
            ),
            const SizedBox(height: 20,),  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFEA7C61),
                              
                            ),
                            
                          ),
                          Positioned(
                            bottom: -10,
                            left: 22,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF58565),
                              ),
                              child: const Center(child: Text('1st', style: TextStyle(color: Colors.white, fontSize: 14),)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text('EKOMANDA', style: TextStyle(color: Color(0xFFA56D60)),),
                      const SizedBox(height: 5,),
                      const Text('34', style: TextStyle(color: Color(0xFFA56D60)),),
                    ],
                  ),
                  
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                                  decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFEA7C61),
                                  
                                ),
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  
                                ),
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF689F38),
                                  
                                ),
                                child: const Center(child: Text('I', style: TextStyle(fontSize: 70, color: Colors.white),)),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -10,
                            left: 50,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF58565),
                              ),
                              child: const Center(child: Text('1st', style: TextStyle(color: Colors.white, fontSize: 14),)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text('EKOMANDA', style: TextStyle(color: Color(0xFFA56D60)),),
                      const SizedBox(height: 5,),
                      const Text('34', style: TextStyle(color: Color(0xFFA56D60)),),
                    ],
                  ),
                    Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFEA7C61),
                              
                            ),
                            
                          ),
                          Positioned(
                            bottom: -10,
                            left: 22,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF58565),
                              ),
                              child: const Center(child: Text('1st', style: TextStyle(color: Colors.white, fontSize: 14),)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text('EKOMANDA', style: TextStyle(color: Color(0xFFA56D60)),),
                      const SizedBox(height: 5,),
                      const Text('34', style: TextStyle(color: Color(0xFFA56D60)),),
                    ],
                  ),
         
                
                ],
              ),
            ),
            const SizedBox(height: 30,),

            ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 3,),
                    Column(
                      children: const [
                        Text('1', style: TextStyle(fontSize: 16,),),
                        SizedBox(height: 5,),
                        Icon(Icons.arrow_drop_up, color: Color(0xFFEA7C61))
                      ],
                    ),
                    
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.84,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color(0xFFF2CFC3)
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFEA7C61)
                            ),
                            child: const Center(child: Text('V',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white))),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Jose gonzalves', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                          const Spacer(),
                          const Text('24', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                          const SizedBox(width: 30,),
                        ],
                      ),
                    )
                  ],
            ),
                  const SizedBox(height: 10,)
                ],
              )
 ,)
                     ],
        ),
      ),
      
    );
  }
}
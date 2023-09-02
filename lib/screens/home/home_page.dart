import 'package:flutter/material.dart';



class  Homepage extends StatefulWidget {
  const Homepage ({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
var value1 = false;
var value2 = false;
var value3 = false;
var value4 = false;
//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Remove.jpg'),

                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                      'Premium',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'The Secrets to be Fluent in English', style: TextStyle(color: Color(0xFF808080)),
                ),

            ],

          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16.0,
                         vertical: 8.0,
                     ),
                     child: Row(
                       children: [
                         // ปุ่มTopic
                         Expanded(
                           child: buildCategoryButton(
                             'Full Access to Pattern Lessons',
                             Icons.supervisor_account,
                             Colors.lightBlueAccent,
                             value1,
                           ),
                         ),
                         SizedBox(width: 16.0),
                         // ปุ่มpoplar
                         Expanded(
                             child: buildCategoryButton(
                                 'Unlock All Limitations',
                                 Icons.key_off,
                                 Colors.yellow.shade800,
                                value2,
                             ),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                     child: Row(
                       children: [
                         // ปุ่มNewest
                         Expanded(
                             child: buildCategoryButton(
                                 'All Topics Available',
                                 Icons.label,
                                 Colors.purple.shade300,
                                 value3,
                             ),
                         ),
                         SizedBox(width: 16.0),
                         //ปุ่มAdvanced
                         Expanded(
                           child: buildCategoryButton(
                             'Personalized Coaching',
                             Icons.person,
                             Colors.greenAccent.shade400,
                             value4,
                           ),
                         ),
                       ],
                     ),
                   ),
                   Row(
                     children:<Widget> [
                       Center(),
                       SizedBox(width: 245.0, height: 30),
                          Text(
                           '2023 Special Early Brids offer',
                           style: TextStyle(
                             color: Colors.pink.shade400,
                             fontWeight: FontWeight.w200,
                             decoration: TextDecoration.underline,
                           ),
                         ),

                     ],
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         'IDR50.000/',
                         style: TextStyle(
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       SizedBox(
                         width: 5.0,
                       ),
                       Text(
                         'month',
                         style: TextStyle(
                           fontSize: 20.0,
                         ),
                       ),
                     ],
                   ),

                   Center(
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: ElevatedButton(
                         onPressed: (){
                           setState(() {
                             value1 = !value1;
                           });
                         },
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                           child: Text('Start 30 Days Free Trail'),
                         ),
                       ),
                     ),
                   ),
                   Row(
                     children:<Widget> [
                       Center(),
                       SizedBox(width: 300.0, height: 30),
                       Text(
                         'View all Plan',
                         style: TextStyle(
                           color: Colors.black87,
                           fontWeight: FontWeight.w200,
                           decoration: TextDecoration.underline,
                         ),
                       ),

                     ],
                   )
                 ],

              ),
            ),
          ),
        ],
      )
    );
  }

  Container buildCategoryButton(
       String  text,
       IconData icon,
       Color color,
       bool isSelected) {
    return Container(
                     decoration: BoxDecoration(
                       color: isSelected ? color : Colors.white,
                       borderRadius: BorderRadius.circular(300.0),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.2),
                           spreadRadius: 10,
                           blurRadius: 20,
                           offset: Offset(0, 10), // changes position of shadow
                         ),
                       ]
                     ),
                     child: Row(
                       children: [
                         Container(
                           padding: const EdgeInsets.all(8.0),
                           margin: const EdgeInsets.all(12.0),
                             decoration: BoxDecoration(
                               color: isSelected ? Colors.white : color,
                               shape: BoxShape.circle,
                             ),
                       child: Icon(
                           icon,
                           size: 30.0,
                           color: isSelected ? color : Colors.white,
                       ),
                     ),
                         Text(
                              text,
                              style: TextStyle(color: isSelected ? Colors.white : Colors.black87),
                         ),
                       ],
                     ),
                   );
  }
}

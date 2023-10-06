// import 'package:flutter/material.dart';
//
// class SecondPage extends StatefulWidget {
//   @override
//   _SecondPageState createState() => _SecondPageState();
// }
//
// class _SecondPageState extends State<SecondPage> {
//   int currentNumber = 1;
//   Color numberColor = Colors.yellow;
//
//   bool isPrime(int number) {
//     if (number <= 1) return false;
//     if (number <= 3) return true;
//     if (number % 2 == 0 || number % 3 == 0) return false;
//     for (int i = 5; i * i <= number; i += 6) {
//       if (number % i == 0 || number % (i + 2) == 0) return false;
//     }
//     return true;
//   }
//
//   void incrementNumber() {
//     setState(() {
//       currentNumber++;
//       updateNumberColor();
//     });
//   }
//
//   void decrementNumber() {
//     setState(() {
//       currentNumber--;
//       updateNumberColor();
//     });
//   }
//
//   void updateNumberColor() {
//     numberColor = isPrime(currentNumber) ? Colors.red : Colors.yellow;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Number Page')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedContainer(
//               duration: Duration(milliseconds: 500),
//               color: numberColor,
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Number: $currentNumber',
//                 style: TextStyle(fontSize: 24.0),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: decrementNumber,
//                   child: Text('Decrement'),
//                 ),
//                 SizedBox(width: 20.0),
//                 ElevatedButton(
//                   onPressed: incrementNumber,
//                   child: Text('Increment'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// details_page.dartimport
// 'package:flutter/material.dart';


import 'package:customlistviewflutter/user.dart';
import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {  final DataModel data;
DetailsPage({required this.data});
@override
Widget build(BuildContext context) {    return Scaffold(
  appBar: AppBar(        title: Text('Details Page'),
  ),      body: Center(
  child: Column(          mainAxisAlignment: MainAxisAlignment.center,
    children: [            CircleAvatar(
      backgroundImage: AssetImage(data.image),              radius: 60,
    ),
      Padding(              padding: const EdgeInsets.all(8.0),
        child: Text('Name: ${data.name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),            ),
      Padding(              padding: const EdgeInsets.all(8.0),
        child: Text('Position: ${data.position}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),            ),

    ],
  ),      ),
);  }
}
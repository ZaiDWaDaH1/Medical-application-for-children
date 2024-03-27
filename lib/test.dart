// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// class DD extends StatefulWidget {
//   const DD({super.key});

//   @override
//   State<DD> createState() => _DDState();
// }

// class _DDState extends State<DD> {
//   @override
//   Widget build(BuildContext context) {
//     StateMachineController? control;
//     SMIInput<bool>? isChecking;
//     SMIInput<bool>? isHandsUp;
//     SMIInput<bool>? trigSuccess;
//     SMIInput<bool>? trigFail;

//     final Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Title'),
//       ),
//       body: Center(
//         child: Container(
//           child: Column(children: [
//             SizedBox(
//               height: 300,
//               width: size.width,
//               child: RiveAnimation.asset(
//                 'assets/lottie/login_screen_character.riv',
//                 stateMachines: ['Login Machine'],
//                 onInit: (artboard) {
//                   control = StateMachineController.fromArtboard(
//                       artboard, 'Login Machine');
//                   if (control == null) return;
//                   artboard.addController(control!);
//                   isChecking = control?.findInput('isChecking');
//                   isHandsUp = control?.findInput('isHandsUp');
//                   trigSuccess = control?.findInput('trigSuccess');
//                   trigFail = control?.findInput('trigFail');
//                 },
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }

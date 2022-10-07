import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tatware/components.dart';

import 'orano_bot_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/image.png',),
          ),
        ),

      ),
       Align(
        alignment: AlignmentDirectional.center,
         child: SizedBox(
           child: Image.asset(
             'assets/images/oranos.png',
           ),
         ),
      ),
       Align(
        alignment: AlignmentDirectional.bottomCenter,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: HexColor('#16919B'),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 child: MaterialButton(
                   onPressed: () {
                     navigateTo(context, const OranoBotScreen());
                   },
                   child: const Text(
                     'Get Started',
                     style:  TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.w400,
                       color: Colors.white,
                     ),
                   ),
                 ),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:  [
                   const Text('Don\'t have an account?',
                     style: TextStyle(
                       fontSize: 12,
                     ),

                   ),
                   TextButton(
                       onPressed: (){}, child: Text('SignUp',
                     style: TextStyle(
                       fontSize: 12,
                       color: HexColor('#16919B'),
                     ),
                   )),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:  const [
                   Icon(Icons.language_outlined),
                   SizedBox(width: 2,),
                   Text('English',
                   style: TextStyle(
                     fontSize: 15,
                   ),
                   ),
                 ],
               ),
               SizedBox(height: 20,),



             ],
           ),
         ),
      ),
    ],
      )
    );
  }
}

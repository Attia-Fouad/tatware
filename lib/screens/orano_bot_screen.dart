import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../components.dart';
import 'chat_screen.dart';

class OranoBotScreen extends StatelessWidget {
  const OranoBotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              child: Image.asset('assets/images/text.png'),
            ),
          ),
          Center(
            child: SizedBox(
              child: Image.asset('assets/images/bot.png'),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            width: 147,
            height: 53,
            decoration: BoxDecoration(
              color: HexColor('#16919B'),
              borderRadius: BorderRadius.circular(8),
            ),
            child: MaterialButton(
              onPressed: () {
                navigateTo(context,  ChatScreen());
              },
              child: const Text(
                'Next',
                style:  TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50,),
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
          const SizedBox(height: 20,),



        ],
      ),
    );
  }
}

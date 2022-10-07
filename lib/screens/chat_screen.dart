import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:group_select/group_select.dart';
import 'package:group_select/group_select.dart';
import 'package:tatware/components.dart';
import 'package:tatware/screens/home_screen.dart';

class ChatScreen extends StatelessWidget {
  final itemController = SelectGroupController<int>();
   ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var messageController=TextEditingController();
    return Scaffold(
      // appBar: AppBar(
      //   systemOverlayStyle:  const SystemUiOverlayStyle(
      //     statusBarColor: Colors.white, // Status bar
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50,),
                  BotMessage('Hi, Whats You Name Firstname?'),
                  MyMessage('Abdalla'),
                  BotMessage('Ok, Abdalla Whats Your Lastname?'),
                  MyMessage('Salah'),
                  BotMessage('Mr Abdalla Salah, What\'s your Title? '),
                  MyMessage('Front-end Developer'),
                  BotMessage('What Categories you will need expert In?'),
                  _groupSelectWithItems,
                  SizedBox(height: 20,),
                  Align(alignment: AlignmentDirectional.center,
                      child: TextButton(child: Text('Say Done, Or Press Send to Apply',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#999999'),
                        ),
                      ),onPressed: (){
                        navigateTo(context,  HomeScreen());
                      },),
                  ),
                ],)),
            ),
            SizedBox(height: 20,),
            // With groups items
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color:  HexColor('#F5F5F5'),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      controller: messageController,
                      decoration:  InputDecoration(
                        prefixIcon: Icon(
                            Icons.language_outlined,
                          color: HexColor('#77838F'),
                        ),
                        suffixIcon:ImageIcon(
                          AssetImage("assets/images/mic.png"),
                          color: HexColor('#77838F'),
                        ),
                        border: InputBorder.none,
                        hintText: 'Type something...',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: HexColor('#77838F'),),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5,),
                IconButton(
                  icon:  ImageIcon(
                    AssetImage("assets/images/send.png"),
                    color: HexColor('#16919B'),
                  ),
                  onPressed: () {
                    navigateTo(context,  HomeScreen());
                  },
                ),

              ],
            ),
            const SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
  Widget MyMessage(String message,) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 250,
              height: 48,
              decoration:   BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: HexColor('#16919B'),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),

                  ),
                ],
              ),
            ),
            SizedBox(width: 8,),
             ImageIcon(
              AssetImage("assets/images/read.png"),
              color: HexColor('#1BC5BD'),
            ),
          ],
        ),
      ),
    );

  }


  Widget BotMessage(String message){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/images/bot2.png'),
              backgroundColor: HexColor('#D8D8D8'),
              radius: 22,
            ),
            SizedBox(width: 8,),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: HexColor('#D8D8D8'),
                borderRadius:  BorderRadiusDirectional.circular(8),
              ),
              padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  get _groupSelectWithItems {
    return GroupSelect<int>(
      activeColor: HexColor("#16919B"),
      title: 'Select items',
      controller: itemController,
      items: [
        Item(title: 'Security', value: 1),
        Item(title: 'Supply Chain', value: 2),
        Item(title: 'Information Technology', value: 3),
        Item(title: 'Human Resources', value: 4),
        Item(title: 'Business Research', value: 5),
      ],
    );
  }


}

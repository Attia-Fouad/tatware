import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/images/icon1.png'),
        color: Colors.black,
      ),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/images/icon2.png'),
        color: Colors.black,
      ),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/images/icon3.png'),
        color: Colors.black,
      ),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/images/icon4.png'),
        color: Colors.black,
      ),
      label: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/person1.png'),
            radius: 5,
          ),
        ),
        title: Center(child: Image.asset('assets/images/title.png')),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 16,
            ),
            child: ImageIcon(
              AssetImage('assets/images/search.png'),
              color: Colors.black,
            ),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor:
              Theme.of(context).scaffoldBackgroundColor, // Status bar
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Recommended Experts',
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#242727'),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: HexColor('#C2C2C2'),
                            )),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 242,
                            width: 185,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: HexColor('#CFD9DE'),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 150,
                                  child:
                                      Image.asset('assets/images/person1.png'),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: HexColor('#FFC817'),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '(5.0)',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: HexColor('#C2C2C2'),
                                                ),
                                              ),
                                              const Spacer(),
                                              ImageIcon(
                                                const AssetImage(
                                                    'assets/images/heart.png'),
                                                color: HexColor('#C2C2C2'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Expanded(
                                          child:Text(
                                            'Kareem Adel',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Supply Chain',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: HexColor('#777D80'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 242,
                            width: 185,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: HexColor('#CFD9DE'),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 150,
                                  child:
                                      Image.asset('assets/images/person2.png'),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: HexColor('#FFC817'),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '(4.9)',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: HexColor('#C2C2C2'),
                                                ),
                                              ),
                                              const Spacer(),
                                              ImageIcon(
                                                const AssetImage(
                                                    'assets/images/heart.png'),
                                                color: HexColor('#C2C2C2'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Expanded(
                                          child: Text(
                                            'Merna Adel',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Supply Chain',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: HexColor('#777D80'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 242,
                            width: 185,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: HexColor('#CFD9DE'),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 150,
                                  child:
                                  Image.asset('assets/images/person1.png'),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: HexColor('#FFC817'),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '(5.0)',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: HexColor('#C2C2C2'),
                                                ),
                                              ),
                                              const Spacer(),
                                              ImageIcon(
                                                const AssetImage(
                                                    'assets/images/heart.png'),
                                                color: HexColor('#C2C2C2'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Expanded(
                                          child:Text(
                                            'Kareem Adel',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Supply Chain',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: HexColor('#777D80'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 242,
                            width: 185,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: HexColor('#CFD9DE'),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 150,
                                  child:
                                  Image.asset('assets/images/person2.png'),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: HexColor('#FFC817'),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '(4.9)',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: HexColor('#C2C2C2'),
                                                ),
                                              ),
                                              const Spacer(),
                                              ImageIcon(
                                                const AssetImage(
                                                    'assets/images/heart.png'),
                                                color: HexColor('#C2C2C2'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Expanded(
                                          child: Text(
                                            'Merna Adel',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Supply Chain',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: HexColor('#777D80'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          'Online Experts',
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#242727'),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: HexColor('#C2C2C2'),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => buildItem2(),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 10,
                              ),
                              itemCount: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
              onPressed: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius:
                            const BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      height: 500,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: Stack(
                              alignment: AlignmentDirectional.topCenter,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 70,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            width: 1,
                                            color: HexColor('#CFD9DE'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            children: [
                                              const ImageIcon(AssetImage(
                                                  'assets/images/itIcon.png')),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Information Technology',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              HexColor('#1C1E1E'),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '23 Experts',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              HexColor('#777D80'),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: HexColor('#77838F'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 70,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            width: 1,
                                            color: HexColor('#CFD9DE'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            children: [
                                              const ImageIcon(AssetImage(
                                                  'assets/images/supplychain.png')),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Supply Chain',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              HexColor('#1C1E1E'),
                                                        ),
                                                      ),
                                                    ),

                                                    Expanded(
                                                      child: Text(
                                                        '12 Experts',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              HexColor('#777D80'),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: HexColor('#77838F'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 70,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            width: 1,
                                            color: HexColor('#CFD9DE'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            children: [
                                              const ImageIcon(AssetImage(
                                                  'assets/images/security.png')),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Security',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              HexColor('#1C1E1E'),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '8 Experts',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              HexColor('#777D80'),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: HexColor('#77838F'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 70,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            width: 1,
                                            color: HexColor('#CFD9DE'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            children: [
                                              const ImageIcon(AssetImage(
                                                  'assets/images/humanresources.png')),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Human Resources',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              HexColor('#1C1E1E'),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '8 Experts',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              HexColor('#777D80'),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: HexColor('#77838F'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 70,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            width: 1,
                                            color: HexColor('#CFD9DE'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            children: [
                                              const ImageIcon(AssetImage(
                                                  'assets/images/immigration.png')),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Immigration',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              HexColor('#1C1E1E'),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '18 Experts',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              HexColor('#777D80'),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: HexColor('#77838F'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 70,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            width: 1,
                                            color: HexColor('#CFD9DE'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            children: [
                                              const ImageIcon(AssetImage(
                                                  'assets/images/translation.png')),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Information Technology',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              HexColor('#1C1E1E'),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '3 Experts',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              HexColor('#777D80'),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: HexColor('#77838F'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: -20,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: ImageIcon(
                                      const AssetImage(
                                          'assets/images/drag.png'),
                                      color: HexColor('#D8D8D8'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              icon: ImageIcon(
                const AssetImage('assets/images/drag.png'),
                color: HexColor('#D8D8D8'),
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItems,
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }



  Widget buildItem2() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            //alignment: AlignmentDirectional.topEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: HexColor('#DFE8EB'),
              ),
              Positioned(
                top: 4,
                right: 0,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: HexColor('#62DD91'),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Lance',
            style: TextStyle(
              fontSize: 9,
              color: HexColor('#777D80'),
            ),
          ),
        ],
      );
}

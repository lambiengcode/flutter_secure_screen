import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glass_morphism/src/public/styles.dart';
import 'package:flutter_glass_morphism/src/public/constant.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  DateFormat format = DateFormat('dd/MM');
  bool flip = false;
  List tarots = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(1.0, 1.0),
                  colors: <Color>[
                    Color(0xFFD35BC2),
                    Color(0xFF53ACD4),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
            ),
            GlassContainer(
              height: height,
              width: width,
              blur: 1,
              shadowStrength: 10,
              opacity: 0.15,
              //this below code to remove border
              border: Border.fromBorderSide(BorderSide.none),
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: height / 15.0),
                        Container(
                          width: width / 5.0,
                          height: width / 5.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: mC, width: 2.0),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/avt.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '151K Follower | 12K Following',
                          style: TextStyle(
                            color: mC,
                            fontFamily: 'Lato',
                            fontSize: width / 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Dao Hong Vinh',
                          style: TextStyle(
                            color: mCL,
                            fontFamily: 'Lato',
                            fontSize: width / 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: mC,
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 10.0),
                          child: Text(
                            'Follow',
                            style: TextStyle(
                              color: colorTitle,
                              fontSize: width / 26.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 24.0),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildTextStatistic('12', 'Books'),
                              _buildTextStatistic('12891', 'Pages'),
                              _buildTextStatistic('27%', 'Goal'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GlassContainer(
                    height: height * .55,
                    width: width,
                    blur: 5,
                    shadowStrength: 10,
                    opacity: 0.25,
                    //this below code to remove border
                    border: Border.all(
                      color: mC,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          SizedBox(height: 32.0),
                          Container(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextStatistic(title, value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            color: mCL,
            fontSize: width / 22.5,
            fontWeight: FontWeight.w600,
            fontFamily: 'Lato',
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          value,
          style: TextStyle(
            color: mCM,
            fontSize: width / 25.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Lato',
          ),
        ),
      ],
    );
  }
}

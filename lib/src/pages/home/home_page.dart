import 'package:flutter/material.dart';
import 'package:flutter_glass_morphism/src/pages/home/widgets/input_container.dart';
import 'package:flutter_glass_morphism/src/public/styles.dart';
import 'package:flutter_glass_morphism/src/public/constant.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF434343),
                    Color(0xFF000000),
                  ],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            Container(
              height: height,
              width: width,
              color: colorBlack.withOpacity(.25),
              child: Column(
                children: [
                  SizedBox(height: height / 20.0),
                  _buildAppBar(),
                  SizedBox(height: 32.0),
                  Container(
                    height: width * .4,
                    width: width * .4,
                    decoration: BoxDecoration(
                      color: colorBlack.withOpacity(.15),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: mC.withOpacity(.03),
                          offset: Offset(1, 1),
                          blurRadius: 1,
                        ),
                        BoxShadow(
                          color: mC.withOpacity(.04),
                          offset: Offset(-.5, -.5),
                          blurRadius: .5,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      height: width * .135,
                      width: width * .135,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/faceID.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.0),
                  Text(
                    'Type your PIN',
                    style: TextStyle(
                      color: mCH,
                      fontFamily: 'Lato',
                      fontSize: width / 22.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildActiveDot(),
                      SizedBox(width: 20.0),
                      _buildActiveDot(),
                      SizedBox(width: 20.0),
                      _buildActiveDot(),
                      SizedBox(width: 20.0),
                      _buildInactiveDot(),
                      SizedBox(width: 20.0),
                      _buildInactiveDot(),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: height * .565,
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 36.0),
                    InputContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActiveDot() {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: mC,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildInactiveDot() {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: mCL.withOpacity(.4),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => null,
            icon: Icon(
              Icons.arrow_back_ios,
              color: mC,
              size: width / 12.5,
            ),
          ),
          Text(
            'Use your FaceID',
            style: TextStyle(
              color: mC,
              fontFamily: 'Lato',
              fontSize: width / 21.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          IconButton(
            onPressed: () => null,
            icon: Icon(
              Icons.info_outline,
              color: mC,
              size: width / 12.5,
            ),
          ),
        ],
      ),
    );
  }
}

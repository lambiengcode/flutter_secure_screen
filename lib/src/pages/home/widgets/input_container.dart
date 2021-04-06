import 'package:flutter/material.dart';
import 'package:flutter_glass_morphism/src/public/constant.dart';
import 'package:flutter_glass_morphism/src/public/styles.dart';

class InputContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputContainerState();
}

class _InputContainerState extends State<InputContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumber(1),
              _buildNumber(2),
              _buildNumber(3),
            ],
          ),
          SizedBox(height: height * .025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumber(4),
              _buildNumber(5),
              _buildNumber(6),
            ],
          ),
          SizedBox(height: height * .025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumber(7),
              _buildNumber(8),
              _buildNumber(9),
            ],
          ),
          SizedBox(height: height * .025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildButton(Icons.fingerprint),
              _buildNumber(0),
              _buildButton(Icons.arrow_back),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumber(number) {
    return Container(
      height: width * .18,
      width: width * .18,
      decoration: BoxDecoration(
        color: mC.withOpacity(.04),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: mC.withOpacity(.015),
            offset: Offset(2, 2),
            blurRadius: 2,
          ),
          BoxShadow(
            color: mC.withOpacity(.03),
            offset: Offset(-.5, -.5),
            blurRadius: .5,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        number.toString(),
        style: TextStyle(
          color: mC,
          fontFamily: 'Lato',
          fontSize: width / 16.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildButton(icon) {
    return Container(
      height: width * .18,
      width: width * .18,
      decoration: BoxDecoration(
        color: mC.withOpacity(.065),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: mC.withOpacity(.04),
            offset: Offset(1, 1),
            blurRadius: 1,
          ),
          BoxShadow(
            color: mC.withOpacity(.08),
            offset: Offset(-.5, -.5),
            blurRadius: .5,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        size: width / 14.0,
        color: mC,
      ),
    );
  }
}

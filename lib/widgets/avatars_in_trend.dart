import 'package:flutter/material.dart';

class AvatarsInTrend extends StatelessWidget {
  const AvatarsInTrend({
    Key? key,
    this.userName,
    this.userPhoto,
  }) : super(key: key);

  final String? userName;
  final String? userPhoto;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(deviceWidth / 36),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatars/$userPhoto'),
            radius: 30.0,
          ),
          SizedBox(height: deviceHeight / 50),
          Text(
            userName ?? 'name',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_test_screen_app/data/users_in_trend_list.dart';
import 'package:flutter_test_screen_app/styles/app_icons.dart';
import 'package:flutter_test_screen_app/widgets/avatars_in_trend.dart';
import 'package:flutter_test_screen_app/widgets/colorful_text_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: deviceHeight / 42),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: deviceWidth / 36),
                  child: const ColorfulWidgetText(),
                ),
                Padding(
                  padding: EdgeInsets.only(right: deviceWidth / 24),
                  child: IconButton(
                    onPressed: () {
                      print(deviceWidth);
                    },
                    icon: Icon(AppIcons.paperPlane),
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight / 60),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth / 36),
              child: const Text(
                'Trending',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
            ),
            AvatarsInTrend(
                userName: UsersInTrendList.usersInTrend[5]['userName'],
                userPhoto: UsersInTrendList.usersInTrend[5]['userPhoto']),
          ],
        ),
      ),
    );
  }
}
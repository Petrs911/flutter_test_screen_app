import 'package:flutter/material.dart';

import 'package:flutter_test_screen_app/data/users_in_trend_list.dart';
import 'package:flutter_test_screen_app/widgets/avatars_in_trend.dart';

class ListViewForAvatars extends StatelessWidget {
  const ListViewForAvatars({Key? key}) : super(key: key);

  final data = UsersInTrendList.usersInTrend;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        flex: 1,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) => AvatarsInTrend(
            userName: data[index]['userName'],
            userPhoto: data[index]['userPhoto'],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_test_screen_app/data/users_in_content_list.dart';
import 'package:flutter_test_screen_app/widgets/container_with_content.dart';

class ListViewForContent extends StatelessWidget {
  final data = UsersInContentList.usersList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => ContainerWithContent(
          usersAvatarPhoto: data[index]['usersAvatarPhoto'],
          usersCountry: data[index]['usersCountry'],
          usersName: data[index]['usersName'],
          usersPhotos: data[index]['usersPhotos'],
        ),
      ),
    );
  }
}

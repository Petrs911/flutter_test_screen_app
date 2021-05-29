import 'package:flutter/material.dart';

class ContainerWithContent extends StatelessWidget {
  const ContainerWithContent(
      {Key? key,
      this.usersCountry,
      this.usersName,
      required this.usersPhotos,
      this.usersAvatarPhoto})
      : super(key: key);

  final String? usersAvatarPhoto;
  final String? usersName;
  final String? usersCountry;
  final List usersPhotos;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
              radius: deviceWidth / 17,
              backgroundImage:
                  AssetImage('assets/images/avatars/$usersAvatarPhoto')),
          title: Text(usersName ?? 'Name',
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(usersCountry ?? 'Country'),
          trailing: Icon(Icons.more_horiz),
        ),
        Container(
          width: deviceWidth / 1.10,
          height: deviceHeight / 2.7,
          child: PageView.builder(
            itemCount: usersPhotos.length,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/images/usersPhoto/${usersPhotos[index]}'),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(deviceHeight / 36),
          child: Row(
            children: [
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: deviceWidth / 72),
              Text('7.8k'),
              SizedBox(width: deviceWidth / 14),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: deviceWidth / 72),
              Text('142'),
              SizedBox(width: deviceWidth / 14),
              Icon(Icons.backup_outlined),
              SizedBox(width: deviceWidth / 3.5),
              Icon(Icons.bookmark_add_rounded),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}

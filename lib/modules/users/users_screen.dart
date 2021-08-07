import 'package:flutter/material.dart';
import 'package:reusablecomponents/models/users_screen/users_screen.dart';



class usersScreen extends StatelessWidget {
  List<userData> users = [
    userData(
      id: 1,
      name: 'Mostafa',
      phone: '12345789',
    ),
    userData(
      id: 2,
      name: 'mosta',
      phone: '12345789',
    ),
    userData(
      id: 3,
      name: 'sdlds',
      phone: '12345789',
    ),
    userData(
      id: 1,
      name: 'Mostafa',
      phone: '12345789',
    ),
    userData(
      id: 2,
      name: 'mosta',
      phone: '12345789',
    ),
    userData(
      id: 3,
      name: 'sdlds',
      phone: '12345789',
    ),
    userData(
      id: 1,
      name: 'Mostafa',
      phone: '12345789',
    ),
    userData(
      id: 2,
      name: 'mosta',
      phone: '12345789',
    ),
    userData(
      id: 3,
      name: 'sdlds',
      phone: '12345789',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: ListView.separated(
          itemBuilder: (contect, index) {
            return buildUserItem(users[index]);
          },
          separatorBuilder: (contect, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
            );
          },
          itemCount: users.length,
        ));
  }

  Widget buildUserItem(userData user) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            child: Text(
              '${user.id}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${user.phone}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
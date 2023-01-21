import 'package:flutter/material.dart';

import '../../models/user/user.dart';


class UserListScreen extends StatelessWidget {

  List<UserModel> users= [
    UserModel(id: 1, name: 'Mohammed Omera', phone: '+ 012555666999'),
    UserModel(id: 2, name: 'Mohammed Genidy Omera', phone: '+ 012555666999'),
    UserModel(id: 3, name: 'Mohammed Genidy', phone: '+ 012555666999'),
    UserModel(id: 4, name: 'Mohammed Omera', phone: '+ 012555666999'),
    UserModel(id: 5, name: 'Genidy Omera', phone: '+ 012555666999'),
    UserModel(id: 6, name: 'Mohammed Omera', phone: '+ 012555666999'),
    UserModel(id: 2, name: 'Mohammed Genidy Omera', phone: '+ 012555666999'),
    UserModel(id: 3, name: 'Mohammed Genidy', phone: '+ 012555666999'),
    UserModel(id: 4, name: 'Mohammed Omera', phone: '+ 012555666999'),
    UserModel(id: 5, name: 'Genidy Omera', phone: '+ 012555666999'),
    UserModel(id: 6, name: 'Mohammed Omera', phone: '+ 012555666999'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (c, i) => buildUser(users[i]),
          separatorBuilder: (c, i) => Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0),
            child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
          ),
          itemCount: users.length),
    );
  }

  Widget buildUser(UserModel user) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${user.phone}',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:fractastic/model/User.dart';
import 'package:fractastic/ui/home/LearningProgress.dart';

class StudentTile extends StatelessWidget {
  final User studentTile;
  StudentTile({this.studentTile});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 5.0),
        leading: CircleAvatar(
          radius: 30.0,
          backgroundColor: const Color(0xFF778899),
          backgroundImage: NetworkImage(studentTile.profilePictureURL),
        ),
        title: Text(studentTile.firstName + ' ' + studentTile.lastName),
        subtitle: Text('Email: ' + studentTile.email),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (_) => LearningProgress(user: studentTile)));
        },
      ),
    );
  }
}

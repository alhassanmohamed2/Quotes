import 'package:flutter/material.dart';
import 'qoute.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
class QouteCard extends StatelessWidget {
  final Qoute qoute;
  final Function delete;
  QouteCard({required this.qoute, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                qoute.text,
                style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                qoute.author,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextButton.icon(
                  onPressed: () {
                    delete();
                  },
                  icon: Icon(Icons.delete),
                  label: Text("Delete"))
            ],
          ),
        ));
  }
}

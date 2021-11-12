import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Qoute> qouets = [
    Qoute('Be yourself; everyone else is already taken.', 'jody'),
    Qoute('So many books, so little time', 'john'),
    Qoute('A room without books is like a body without a soul.', 'jack')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awseom Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: qouets
            .map((qoute) => QouteCard(
                qoute: qoute,
                delete: () {
                  setState(() {
                    qouets.remove(qoute);
                  });
                }))
            .toList(),
      ),
    );
  }
}

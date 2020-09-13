import 'package:flutter/material.dart';
import 'quote.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List <String> quotes = [
  //   'I am Sajib','I am Uddip','I am Uma','I am Dip..'
  // ];
  List<Quote> quotes=[
    Quote(author: 'Sajib', content:'I am Sajib'),
    Quote(author: 'Uddip', content:'I am Uddip'),
    Quote(author: 'Uma', content:'I am Uma'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('Quote list'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: quotes.map((quote) => Text('${quote.content} --> ${quote.author}')).toList(),
        ),
      )
    );
  }
}

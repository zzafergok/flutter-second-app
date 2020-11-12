import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  SearchPage(Key k) : super(key: k);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemExtent: 150,
        itemBuilder: (context, index) {
          return Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            color: index % 2 == 0
                ? Colors.deepOrangeAccent.shade200
                : Colors.blueAccent,
            child: Center(
              child: Text(index.toString()),
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';

class DetailCard {
  final String title;
  final String content;

  DetailCard(this.title, this.content);

  Card make() {
    return Card(
      color: Colors.green[100],
      margin: const EdgeInsets.all(10),
      elevation: 8,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                  child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              Container(
                  width: double.infinity,
                  child: Text(
                    this.content,
                    textAlign: TextAlign.left,
                  ))
            ],
          )),
    );
  }
}

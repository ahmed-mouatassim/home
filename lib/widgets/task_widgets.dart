import 'package:flutter/material.dart';

class TaskWidgets {


  static Widget taskCard() {
    return CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.person, color: Colors.deepPurpleAccent),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
            );
  }


}
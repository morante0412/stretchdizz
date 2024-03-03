import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      // bottom
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
        Align(
          alignment: Alignment.centerRight, // Align left
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: const Text('Hello World'),
          ),
        ),

        Align(
          alignment: Alignment.centerLeft, // Align left
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: const Text('Hello World'),
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),

        // Bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Type a message...',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.mode,
                color: Colors.grey
              ),
            ],
          ),
        ),
      ],
    );
  }
}
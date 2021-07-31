import 'package:flutter/material.dart';

class Coba extends StatelessWidget {
  const Coba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Icon(Icons.message),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Title"),
                Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                " do eiusmod tempor incididunt ut labore et dolore magna "
                "aliqua. Ut enim ad minim veniam, quis nostrud "
                "exercitation ullamco laboris nisi ut aliquip ex ea "
                "commodo consequat."),
              ],
            ),
          )
        ],
      )
    );
  }
}
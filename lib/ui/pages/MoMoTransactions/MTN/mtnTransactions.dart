import 'package:flutter/material.dart';

class PerformTransactionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imagePath = 'assets/images/image.jpg';
    final TextStyle titleStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
    final Color dividerColor = Colors.black;
    final Color containerColor = Colors.grey;

    return Column(
      children: [
        Divider(
          color: dividerColor,
          height: 1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Perform Transaction',
            style: titleStyle,
          ),
        ),
        Divider(
          color: dividerColor,
          height: 1,
        ),
        Container(
          color: containerColor,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Perform transaction logic
                },
                child: Text('Perform'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

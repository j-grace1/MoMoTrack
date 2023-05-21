import 'package:flutter/material.dart';

class InferencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inferences'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Inferences',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Based on your spending patterns, we have some inferences to share with you:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              InferenceTile(
                icon: Icons.trending_up,
                title:
                    'Your expenses have increased by 10% compared to last month',
              ),
              InferenceTile(
                icon: Icons.check_circle_outline,
                title:
                    'You have successfully saved 5% of your income this month',
              ),
              InferenceTile(
                icon: Icons.warning,
                title:
                    'Your spending on eating out has exceeded your budget by 20%',
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

class InferenceTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const InferenceTile({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(icon, size: 32),
          SizedBox(width: 16),
          Flexible(
            child: Text(
              title,
              style: TextStyle(fontSize: 18),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

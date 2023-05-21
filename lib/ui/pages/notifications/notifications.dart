import 'package:flutter/material.dart';
import 'inferences.dart';
import 'articles.dart';

List<Map<String, dynamic>> notifications = [
  {
    'type': 'article',
    'title': 'Title 1',
    'body': 'Description of article 1',
    'image': 'https://picsum.photos/id/10/200/300',
  },
  {
    'type': 'article',
    'title': 'Title 2',
    'body': 'Description of article 2',
    'image': 'https://picsum.photos/id/20/200/300',
  },
  {
    'type': 'inference',
    'icon': Icons.trending_up,
    'title': 'Your expenses have increased by 10% compared to last month',
  },
  {
    'type': 'inference',
    'icon': Icons.check_circle_outline,
    'title': 'You have successfully saved 5% of your income this month',
  },
  {
    'type': 'inference',
    'icon': Icons.warning,
    'title': 'Your spending on eating out has exceeded your budget by 20%',
  },
];

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          final notification = {
            'type': index % 2 == 0 ? 'article' : 'inference',
            'title': 'Notification Title $index',
            'body': 'Notification Body $index',
            'image': 'https://picsum.photos/200',
          };
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationItem(
                    notification: notification,
                  ),
                ),
              );
            },
            child: NotificationItem(notification: notification),
          );
        },
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final Map<String, dynamic> notification;

  const NotificationItem({required this.notification});

  @override
  Widget build(BuildContext context) {
    if (notification['type'] == 'article') {
      return _buildArticle(context);
    } else if (notification['type'] == 'inference') {
      return _buildInference(context);
    } else {
      return Container();
    }
  }

  Widget _buildArticle(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to full article page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ArticlesPage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(notification['image'].toString()),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification['title'] as String,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 8.0),
                  Text(notification['body'] as String),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInference(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to full inference page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InferencePage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              Icons.assessment_outlined,
              size: 48,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Inference Title',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Description of inference',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

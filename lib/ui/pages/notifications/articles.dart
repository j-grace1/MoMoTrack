import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Articles'),
      ),
      body: ListView(
        children: [
          _buildArticle(
            context,
            'Title 1',
            'Description of article 1',
            'https://picsum.photos/id/10/200/300',
          ),
          _buildArticle(
            context,
            'Title 2',
            'Description of article 2',
            'https://picsum.photos/id/20/200/300',
          ),
          _buildArticle(
            context,
            'Title 3',
            'Description of article 3',
            'https://picsum.photos/id/30/200/300',
          ),
        ],
      ),
    );
  }

  Widget _buildArticle(
      BuildContext context, String title, String description, String imageUrl) {
    return InkWell(
      onTap: () {
        // Navigate to full article page
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(imageUrl),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 8.0),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

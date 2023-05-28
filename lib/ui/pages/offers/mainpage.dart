import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFuturePage extends StatefulWidget {
  @override
  _MyFuturePageState createState() => _MyFuturePageState();
}

class _MyFuturePageState extends State<MyFuturePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create New',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: () {
                    _tabController.animateTo(_tabController.index - 1);
                  },
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 200,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        MyFutureItem(
                          title: 'Saving',
                          description: 'Start saving for your future',
                          iconSvg: 'assets/saving.svg',
                        ),
                        MyFutureItem(
                          title: 'Goal',
                          description: 'Set and achieve your financial goals',
                          iconSvg: 'assets/goal.svg',
                        ),
                        MyFutureItem(
                          title: 'Asset',
                          description: 'Manage your valuable assets',
                          iconSvg: 'assets/asset.svg',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16),
                IconButton(
                  icon: Icon(Icons.arrow_right),
                  onPressed: () {
                    _tabController.animateTo(_tabController.index + 1);
                  },
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'My Savings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  final savings = MyFutureData.getRecentSavings();
                  final saving = savings[index];
                  return MyFutureItem(
                    title: saving.title,
                    description: saving.description,
                    iconSvg: 'assets/saving.svg',
                  );
                },
              ),
            ),
            SizedBox(height: 32),
            Text(
              'My Goals',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  final goals = MyFutureData.getRecentGoals();
                  final goal = goals[index];
                  return MyFutureItem(
                    title: goal.title,
                    description: goal.description,
                    iconSvg: 'assets/goal.svg',
                  );
                },
              ),
            ),
            SizedBox(height: 32),
            Text(
              'My Assets',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  final assets = MyFutureData.getRecentAssets();
                  final asset = assets[index];
                  return MyFutureItem(
                    title: asset.title,
                    description: asset.description,
                    iconSvg: 'assets/asset.svg',
                  );
                },
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Enjoy a bright future with MomoTrack!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class MyFutureItem extends StatelessWidget {
  final String title;
  final String description;
  final String iconSvg;

  const MyFutureItem({
    required this.title,
    required this.description,
    required this.iconSvg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          iconSvg,
          width: 48,
          height: 48,
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(fontSize: 12, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class MyFutureData {
  static List<Saving> getRecentSavings() {
    return [
      Saving(title: 'Saving 1', description: 'Description 1'),
      Saving(title: 'Saving 2', description: 'Description 2'),
      Saving(title: 'Saving 3', description: 'Description 3'),
      Saving(title: 'Saving 4', description: 'Description 4'),
      Saving(title: 'Saving 5', description: 'Description 5'),
    ];
  }

  static List<Goal> getRecentGoals() {
    return [
      Goal(title: 'Goal 1', description: 'Description 1'),
      Goal(title: 'Goal 2', description: 'Description 2'),
      Goal(title: 'Goal 3', description: 'Description 3'),
      Goal(title: 'Goal 4', description: 'Description 4'),
      Goal(title: 'Goal 5', description: 'Description 5'),
    ];
  }

  static List<Asset> getRecentAssets() {
    return [
      Asset(title: 'Asset 1', description: 'Description 1'),
      Asset(title: 'Asset 2', description: 'Description 2'),
      Asset(title: 'Asset 3', description: 'Description 3'),
      Asset(title: 'Asset 4', description: 'Description 4'),
      Asset(title: 'Asset 5', description: 'Description 5'),
    ];
  }
}

class Saving {
  final String title;
  final String description;

  Saving({required this.title, required this.description});
}

class Goal {
  final String title;
  final String description;

  Goal({required this.title, required this.description});
}

class Asset {
  final String title;
  final String description;

  Asset({required this.title, required this.description});
}

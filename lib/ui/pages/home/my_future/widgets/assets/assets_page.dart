import 'package:flutter/material.dart';

class Asset {
  String name;
  String date;
  double cost;
  double performance;

  Asset(
      {required this.name,
      required this.date,
      required this.cost,
      required this.performance});
}

class AssetsPage extends StatelessWidget {
  final List<Asset> assets = [
    Asset(name: 'Asset 1', date: 'May 3', cost: 200.0, performance: 0.5),
    Asset(name: 'Asset 2', date: 'May 3', cost: 500.0, performance: -0.2),
    Asset(name: 'Asset 3', date: 'May 3', cost: 1000.0, performance: 0.8),
    Asset(name: 'Asset 4', date: 'May 3', cost: 300.0, performance: -0.1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets'),
      ),
      body: ListView.builder(
        itemCount: assets.length,
        itemBuilder: (context, index) {
          final asset = assets[index];
          return Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(asset.name,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8.0),
                    Text(asset.date,
                        style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('\$${asset.cost.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 20.0)),
                    SizedBox(height: 8.0),
                    Text('${asset.performance.toStringAsFixed(2)}%',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: asset.performance >= 0
                                ? Colors.green
                                : Colors.red)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

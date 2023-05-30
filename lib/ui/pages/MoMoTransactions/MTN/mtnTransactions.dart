import 'package:flutter/material.dart';
import 'package:vizier/generated/assets.dart';

class PerformTransactionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imagePath = Assets.transactionsPerformTransactions;
    final TextStyle titleStyle = TextStyle(
        fontSize: 17, color: Colors.grey.shade800, fontWeight: FontWeight.w500);
    final Color dividerColor = Colors.grey.shade200;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          MobileMoLogoSection(),
          Divider(color: dividerColor),
          SizedBox(height: 20),
          PerformTransactionImageSection(imagePath: imagePath),
          SizedBox(height: 10),
          Divider(color: dividerColor, height: 40),
        ],
      ),
    );
  }
}

class MobileMoLogoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(Assets.transactionsMobileMoLogo),
          radius: 35,
        ),
        title: Text(
          'Perform Transaction',
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}

class PerformTransactionImageSection extends StatelessWidget {
  final String imagePath;

  const PerformTransactionImageSection({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade200,
              Colors.blue,
              Colors.yellow,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  width: 350,
                  height: 150,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 113,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 2.0,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            '*126#',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Inter',
                              fontSize: 24,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

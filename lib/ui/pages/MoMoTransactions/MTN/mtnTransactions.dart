import 'package:flutter/material.dart';
import 'package:vizier/generated/assets.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

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
          TransactionHistorySection(),
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

class TransactionHistorySection extends StatefulWidget {
  @override
  _TransactionHistorySectionState createState() =>
      _TransactionHistorySectionState();
}

class _TransactionHistorySectionState extends State<TransactionHistorySection> {
  String selectedMonth = '';
  String selectedWeek = '';
  String selectedDate = '';

  final int maximumChoice = 2;

  bool isMonthSelected(String month) {
    return selectedMonth == month;
  }

  bool isWeekSelected(String week) {
    return selectedWeek == week;
  }

  bool isDateSelected(String date) {
    return selectedDate == date;
  }

  void selectMonth(String month) {
    setState(() {
      if (selectedMonth == month) {
        selectedMonth = '';
      } else {
        selectedMonth = month;
      }
    });
  }

  void selectWeek(String week) {
    setState(() {
      if (selectedWeek == week) {
        selectedWeek = '';
      } else {
        selectedWeek = week;
      }
    });
  }

  void selectDate(String date) {
    setState(() {
      if (selectedDate == date) {
        selectedDate = '';
      } else {
        selectedDate = date;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color dividerColor = Colors.grey.shade200;

    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(Assets.transactionsTransactionHistory),
            radius: 40,
          ),
          title: Text(
            'Transactions History',
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Divider(color: dividerColor, height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    minTime: DateTime(2000),
                    maxTime: DateTime(2100),
                    onConfirm: (date) {
                      selectMonth(date.toString());
                    },
                  );
                },
                child: ElevatedButton(
                  onPressed: () {
                    DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      minTime: DateTime(2000),
                      maxTime: DateTime(2100),
                      onConfirm: (date) {
                        selectMonth(date.toString());
                      },
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: isMonthSelected('')
                          ? Colors.transparent
                          : Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: ListTile(
                      leading: Icon(
                        Icons.calendar_month,
                        color: Colors.purple,
                        size: 35,
                      ),
                      title: Text(
                        'Month',
                        style: TextStyle(
                          color:
                              isMonthSelected('') ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(color: dividerColor, height: 40),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter Transactions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Reset button logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                  ),
                  child: Text('Reset'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Filter By',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Income button logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                    onPrimary: Colors.black,
                  ),
                  child: Text('Income'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Expense button logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                    onPrimary: Colors.black,
                  ),
                  child: Text('Expense'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Sort By',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Highest button logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                    onPrimary: Colors.black,
                  ),
                  child: Text('Highest'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Lowest button logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                    onPrimary: Colors.black,
                  ),
                  child: Text('Lowest'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Newest button logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                    onPrimary: Colors.black,
                  ),
                  child: Text('Newest'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Oldest button logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                    onPrimary: Colors.black,
                  ),
                  child: Text('Oldest'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Category',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Choose Category'),
                        Row(
                          children: [
                            Text('0 Selected'),
                            Icon(Icons.arrow_forward_ios, size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // Apply button logic
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                child: Text(
                  'Apply',
                  style: TextStyle(
                    color: Colors.white,
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

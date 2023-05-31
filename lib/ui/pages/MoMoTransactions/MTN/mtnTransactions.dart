import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vizier/generated/assets.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:vizier/data/models/transaction/MyOwnTransactionData/transactionData.dart';

class PerformTransactionSection extends StatelessWidget {
  final DateTime selectedDate; // Add this variable

  PerformTransactionSection({required this.selectedDate});
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
          AdditionalTransactionSection(selectedDate: selectedDate),
          Divider(color: dividerColor, height: 40),
          TransactionButtons(),
          Divider(color: dividerColor, height: 100),
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
          trailing: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.add),
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

enum TransactionType {
  income,
  expense,
}

class AdditionalTransactionSection extends StatelessWidget {
  final DateTime selectedDate; // Add this variable

  AdditionalTransactionSection(
      {required this.selectedDate}); // Update the constructor
  @override
  Widget build(BuildContext context) {
    DateTime defaultDate = selectedDate ?? DateTime.now();
    String formattedDate = DateFormat('dd/MM/yyyy')
        .format(selectedDate); // Format the selected date
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'History for ${DateFormat('dd/MM/yyyy').format(defaultDate)}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: sampleTransactions.length,
            itemBuilder: (context, index) {
              Transaction transaction = sampleTransactions[index];
              return TransactionCard(transaction: transaction);
            },
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatefulWidget {
  final Transaction transaction;

  const TransactionCard({required this.transaction});

  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  bool isExpanded = false;

  void showCategoriesModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CustomBottomSheet(
          onApply: () {
            Navigator.pop(context); // Close the bottom sheet
            Navigator.pop(context); // Close the first modal
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            leading: Icon(
              widget.transaction.isExpense
                  ? Icons.arrow_circle_up
                  : Icons.arrow_circle_down,
              color: widget.transaction.isExpense ? Colors.red : Colors.green,
            ),
            title: Text(widget.transaction.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.transaction.subtitle
                      .toString(), // Replace with desired date format
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 4),
              ],
            ),
            trailing: Column(
              children: [
                Text(
                  '${widget.transaction.currencySymbol}${widget.transaction.amount}',
                  style: TextStyle(
                    color: widget.transaction.isExpense
                        ? Colors.red
                        : Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  widget.transaction.time
                      .toString(), // Replace with desired date format
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          if (isExpanded) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle message icon tap
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            title: Text('Transaction Message'),
                            content: Text(widget.transaction.messageBody),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.download,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Icon(Icons.message),
                        Text('Message'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap:
                        showCategoriesModal, // Updated to showCategoriesModal
                    child: Column(
                      children: [
                        Icon(Icons.category),
                        Text('Categorize'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle asset item tap
                      // Navigate to create asset form
                    },
                    child: Column(
                      children: [
                        Icon(Icons.add),
                        Text('Asset'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class CustomBottomSheet extends StatefulWidget {
  final VoidCallback onApply;

  const CustomBottomSheet({required this.onApply});

  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  int selectedCategories = 0;

  void navigateToFirstModal() {
    Navigator.pop(context); // Close the second modal
    showModalBottomSheet(
      context: context,
      builder: (context) => CustomBottomSheet(
        onApply: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // ... rest of the code ...
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ... rest of the code ...
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
                            Text('$selectedCategories Selected'),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Apply button logic
                    navigateToFirstModal(); // Navigate to the first modal (bottom sheet)
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                  ),
                  child: Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionButtons extends StatefulWidget {
  @override
  _TransactionButtonsState createState() => _TransactionButtonsState();
}

class _TransactionButtonsState extends State<TransactionButtons> {
  final ScrollController _scrollController = ScrollController();

  void scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          child: IconButton(
            onPressed: () {
              // Add your logic for previous button here
            },
            icon: Icon(Icons.arrow_left),
          ),
        ),
        CircleAvatar(
          child: IconButton(
            onPressed: () {
              // Add your logic for next button here
            },
            icon: Icon(Icons.arrow_right),
          ),
        ),
        FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: scrollToTop,
          child: Icon(Icons.arrow_upward),
        ),
        SizedBox(
          width: 0.2,
        ),
      ],
    );
  }
}

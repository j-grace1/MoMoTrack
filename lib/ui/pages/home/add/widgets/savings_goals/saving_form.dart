import 'package:flutter/material.dart';

class Saving {
  final String title;
  final String date;
  final String dueDate;
  final double amount;
  final bool isPercentage;

  Saving({
    required this.title,
    required this.date,
    required this.dueDate,
    required this.amount,
    required this.isPercentage,
  });

  @override
  String toString() {
    return 'Saving{title: $title, date: $date, dueDate: $dueDate, amount: $amount, isPercentage: $isPercentage}';
  }
}

class SavingForm extends StatefulWidget {
  const SavingForm({Key? key}) : super(key: key);

  @override
  _SavingFormState createState() => _SavingFormState();
}

class _SavingFormState extends State<SavingForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _dateController = TextEditingController();
  final _dueDateController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isPercentage = false;
  List<Saving> _savings = [];

  @override
  void dispose() {
    _titleController.dispose();
    _dateController.dispose();
    _dueDateController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Saving'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    labelText: 'Date',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a date';
                    }
                    return null;
                  },
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      _dateController.text =
                          '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _dueDateController,
                  decoration: InputDecoration(
                    labelText: 'Due Date',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a due date';
                    }
                    return null;
                  },
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      _dueDateController.text =
                          '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    border: OutlineInputBorder(),
                    suffixText: _isPercentage ? '%' : '',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPercentage = !_isPercentage;
                        });
                      },
                      icon: Icon(Icons.attach_money),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an amount';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final title = _titleController.text;
                      final date = _dateController.text;
                      final dueDate = _dueDateController.text;
                      final amount = double.parse(_amountController.text);
                      final saving = Saving(
                        title: title,
                        date: date,
                        dueDate: dueDate,
                        amount: amount,
                        isPercentage: _isPercentage,
                      );
                      setState(() {
                        _savings.add(saving);
                        _titleController.clear();
                        _dateController.clear();
                        _dueDateController.clear();
                        _amountController.clear();
                        _isPercentage = false;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Saving added'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  child: Text('Add Saving'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

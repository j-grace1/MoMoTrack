import 'package:flutter/material.dart';

class GoalForm extends StatefulWidget {
  @override
  _GoalFormState createState() => _GoalFormState();
}

class _GoalFormState extends State<GoalForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _dateController = TextEditingController();
  final _dueDateController = TextEditingController();
  final _amountController = TextEditingController();
  final _startDateController = TextEditingController();
  bool _isPercentage = true;
  bool _isAutomatic = true;
  String _frequency = 'Weekly';

  @override
  void dispose() {
    _titleController.dispose();
    _dateController.dispose();
    _dueDateController.dispose();
    _amountController.dispose();
    _startDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Goal'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _dateController,
              decoration: InputDecoration(
                labelText: 'Start Date',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
              readOnly: true,
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (picked != null) {
                  _dateController.text = picked.toString();
                }
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please select a date';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _dueDateController,
              decoration: InputDecoration(
                labelText: 'Due Date',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
              readOnly: true,
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (picked != null) {
                  _dueDateController.text = picked.toString();
                }
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please select a due date';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
                prefixIcon:
                    _isPercentage ? Text('%') : Icon(Icons.attach_money),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an amount';
                }
                if (double.tryParse(value) == null) {
                  return 'Please enter a valid amount';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text('Automatic Saving'),
                ),
                Switch(
                  value: _isAutomatic,
                  onChanged: (value) {
                    setState(() {
                      _isAutomatic = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text('Saving Type'),
                ),
                DropdownButton<bool>(
                  value: _isPercentage,
                  items: [
                    DropdownMenuItem<bool>(
                      value: true,
                      child: Text('%'),
                    ),
                    DropdownMenuItem<bool>(
                      value: false,
                      child: Text('\$'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _isPercentage = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text('Saving Frequency'),
                ),
                DropdownButton<String>(
                  value: _frequency,
                  items: [
                    DropdownMenuItem<String>(
                      value: 'Weekly',
                      child: Text('Weekly'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Monthly',
                      child: Text('Monthly'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Yearly',
                      child: Text('Yearly'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _frequency = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
//TODO: save goal
                }
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vizier/ui/pages/home/add/widgets/savings_goals/goals_form.dart';
import 'package:vizier/ui/pages/home/add/widgets/savings_goals/saving_form.dart';

class SavingPage extends StatefulWidget {
  const SavingPage({Key? key}) : super(key: key);

  @override
  _SavingPageState createState() => _SavingPageState();
}

class _SavingPageState extends State<SavingPage> {
  List<Widget> goalsList =
      []; // assuming this is initialized with some saved goals
  List<Widget> savingsList =
      []; // assuming this is initialized with some saved savings

  void addGoal() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GoalForm(),
      ),
    );
  }

  void addSaving() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SavingForm(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Savings'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: addSaving,
                  child: const Text('New Saving'),
                ),
                ElevatedButton(
                  onPressed: addGoal,
                  child: const Text('New Goal'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            goalsList.isNotEmpty
                ? Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Goals',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: goalsList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return goalsList[index];
                          },
                        ),
                      ),
                    ],
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            savingsList.isNotEmpty
                ? Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Savings',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: savingsList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return savingsList[index];
                          },
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

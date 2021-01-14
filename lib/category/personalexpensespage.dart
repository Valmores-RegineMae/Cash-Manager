import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:toast/toast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalExpensesPage extends StatefulWidget {
  @override
  _PersonalExpensesPageState createState() => _PersonalExpensesPageState();
}

class _PersonalExpensesPageState extends State<PersonalExpensesPage> {
  TextEditingController memoController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  var myFormat = DateFormat.yMMMMEEEEd();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2050),
      initialDatePickerMode: DatePickerMode.year,
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  addTransaction(context) async {
    String memo = memoController.text;
    String amount = amountController.text;

    if (memo.length == 0 || amount.length == 0) {
      Toast.show("Please fill all the fields!", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final maxLines = 5;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Personal Expenses"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Personal Expenses'),
                leading: CircleAvatar(
                  child: Icon(FontAwesomeIcons.shoppingBag, size: 20),
                  backgroundColor: Colors.orange.withOpacity(.30),
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Memo",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                height: maxLines * 24.0,
                child: TextField(
                  maxLines: maxLines,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  decoration: InputDecoration(
                    icon: Icon(Icons.edit),
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                    helperText: 'Enter a memo for your transaction.',
                    helperStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 6.0),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        icon: Icon(Icons.money_outlined),
                        labelText: 'Amount',
                        hintText: "00.00",
                        helperText: 'Enter the amount of your transaction.',
                        helperStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'SELECT DATE: ',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () => _selectDate(context),
                  child: Text(
                    '${myFormat.format(selectedDate)}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.orange,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 160,
                    child: RaisedButton(
                      onPressed: () async {
                        await addTransaction(context);
                      },
                      child: Text(
                        "Add Expenses",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

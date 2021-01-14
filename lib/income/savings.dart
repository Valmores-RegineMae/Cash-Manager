import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class SavingsPage extends StatefulWidget {
  @override
  _SavingsPageState createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  TextEditingController amountController = TextEditingController();

  addTransaction(context) async {
    String amount = amountController.text;

    if (amount.length == 0) {
      Toast.show("Please enter the amount!", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Savings"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Total Savings",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              alignment: Alignment.center,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.orange,
                  width: 2.0,
                ),
              ),
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "00.00",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: 200.0,
              //height: 100.0,
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "00.00",
                      border: OutlineInputBorder(),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 50.0,
                width: 300,
                child: RaisedButton(
                  onPressed: () async {
                    await addTransaction(context);
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

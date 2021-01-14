import 'income/addbalancepage.dart';
import 'package:flutter/material.dart';
import 'income/savings.dart';

class IncomePage extends StatefulWidget {
  @override
  _IncomePageState createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Income"),
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
                "Available Balance",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50.0,
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
            SizedBox(height: 80.0),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 50.0,
                width: 180,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => AddBalancePage(),
                      ));
                    },
                    child: Text(
                      "Add Balance",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
              child: Container(
                height: 50.0,
                width: 160,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SavingsPage(),
                      ));
                    },
                    child: Text(
                      "Savings",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

import 'dart:ui';
import 'categorypage.dart';
import 'expensespage.dart';
import 'incomepage.dart';
import 'signin_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int income;
  final int expense;
  final int savings;

  const HomePage({this.income, this.expense, this.savings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignInPage()),
                    (Route<dynamic> route) => false);
              },
              child: Text(
                "Sign Out",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.orangeAccent,
                      Colors.orangeAccent[400],
                    ],
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 53,
                      backgroundColor: Colors.grey[800],
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            AssetImage("assets/images/budget1.png"),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "Cash Manager",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.category),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CategoryPage(),
                  ));
                },
              ),
              ListTile(
                title: Text(
                  "Expenses",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.money_off_csred_outlined),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ExpensesPage(),
                  ));
                },
              ),
              ListTile(
                title: Text(
                  "Income",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.money),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => IncomePage(),
                  ));
                },
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                title: Text(
                  "Exit",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.exit_to_app),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ),
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Available",
                style: TextStyle(fontSize: 28, color: Colors.black),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 350,
                child: Card(
                  elevation: 4,
                  color: Colors.orange[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          "00.00",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  Spacer(),
                  Text(
                    "Total Transactions",
                    style: TextStyle(fontSize: 26, color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Card(
                elevation: 4,
                color: Colors.orange[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "Income",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            "00.00", //income.toString(),
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 4,
                color: Colors.orange[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "Expenses",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            "00.00", //expense.toString(),
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 4,
                color: Colors.orange[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "Savings",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            "00.00", //savings.toString(),
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}

import 'category/billspage.dart';
import 'category/clothingpage.dart';
import 'category/educationpage.dart';
import 'category/personalexpensespage.dart';
import 'category/transportationpage.dart';
import 'category/food_drinkpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Category"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              FlatButton.icon(
                height: 70.0,
                minWidth: 330.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.black),
                ),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FoodAndDrinkPage(),
                  ));
                },
                icon: Icon(Icons.fastfood),
                label: Text(
                  "Food and Drink",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 26.0),
              FlatButton.icon(
                height: 70.0,
                minWidth: 330.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.black)),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ClothingPage(),
                  ));
                },
                icon: Icon(FontAwesomeIcons.tshirt),
                label: Text(
                  "Clothing",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 26.0),
              FlatButton.icon(
                height: 70.0,
                minWidth: 330.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.black)),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TransportationPage(),
                  ));
                },
                icon: Icon(Icons.commute),
                label: Text(
                  "Transportation",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 26.0),
              FlatButton.icon(
                height: 70.0,
                minWidth: 330.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.black)),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EducationPage(),
                  ));
                },
                icon: Icon(FontAwesomeIcons.book),
                label: Text(
                  "Education",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 26.0),
              FlatButton.icon(
                height: 70.0,
                minWidth: 330.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.black)),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => BillsPage(),
                  ));
                },
                icon: Icon(Icons.list_alt),
                label: Text(
                  "Bills",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 26.0),
              FlatButton.icon(
                height: 70.0,
                minWidth: 330.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.black)),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => PersonalExpensesPage(),
                  ));
                },
                icon: Icon(FontAwesomeIcons.shoppingBag),
                label: Text(
                  "Personal Expenses",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

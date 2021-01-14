import 'package:flutter/material.dart';

class ExpensesPage extends StatefulWidget {
  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  List<ListItem> _dropdownMonths = [
    ListItem(0, "Month"),
    ListItem(1, "January"),
    ListItem(2, "February"),
    ListItem(3, "March"),
    ListItem(4, "April"),
    ListItem(5, "May"),
    ListItem(6, "June"),
    ListItem(7, "July"),
    ListItem(8, "August"),
    ListItem(9, "September"),
    ListItem(10, "October"),
    ListItem(11, "November"),
    ListItem(12, "December"),
  ];

  List<ListItem> _dropdownYear = [
    ListItem(0, "Year"),
    ListItem(1, "2020"),
    ListItem(2, "2021"),
    ListItem(3, "2022"),
    ListItem(4, "2023"),
    ListItem(5, "2024"),
    ListItem(6, "2025"),
    ListItem(7, "2026"),
    ListItem(8, "2027"),
    ListItem(9, "2028"),
    ListItem(10, "2029"),
    ListItem(11, "2030"),
    ListItem(12, "2031"),
    ListItem(13, "2032"),
    ListItem(14, "2033"),
    ListItem(15, "2034"),
    ListItem(16, "2035"),
    ListItem(17, "2036"),
    ListItem(18, "2037"),
    ListItem(19, "2038"),
    ListItem(20, "2039"),
    ListItem(21, "2040"),
    ListItem(22, "2041"),
    ListItem(23, "2042"),
    ListItem(24, "2043"),
    ListItem(25, "2044"),
    ListItem(26, "2045"),
    ListItem(27, "2046"),
    ListItem(28, "2047"),
    ListItem(29, "2048"),
    ListItem(30, "2049"),
    ListItem(31, "2050"),
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  List<DropdownMenuItem<ListItem>> _dropdownMenuYear;
  ListItem _selectedMonths;
  ListItem _selectedYear;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownMonths);
    _dropdownMenuYear = buildDropDownMenuItems(_dropdownYear);
    _selectedMonths = _dropdownMenuItems[0].value;
    _selectedYear = _dropdownMenuYear[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  ScrollController scrollController = new ScrollController();
  final transactions;

  final int income;
  final int expense;

  _ExpensesPageState({this.income, this.expense, this.transactions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Expenses"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      iconEnabledColor: Colors.orange,
                      isExpanded: true,
                      value: _selectedMonths,
                      items: _dropdownMenuItems,
                      onChanged: (value) {
                        setState(() {
                          _selectedMonths = value;
                        });
                        Text(
                          "${_selectedMonths.name}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        );
                      }),
                ),
              ),
              Text(
                "You selected ${_selectedMonths.name}.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      iconEnabledColor: Colors.orange,
                      isExpanded: true,
                      value: _selectedYear,
                      items: _dropdownMenuYear,
                      onChanged: (value) {
                        setState(() {
                          _selectedYear = value;
                        });
                        Text(
                          "${_selectedYear.name}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        );
                      }),
                ),
              ),
              Text(
                "You selected ${_selectedYear.name}.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 350.0,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.orange,
                  elevation: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        "Monthly Average",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      ListTile(
                        title: Text(
                          "Daily Expense",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text(
                          "00.00", //income.toString(),
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.orange.withOpacity(.50),
                      ),
                      title: Text("Memo"),
                      subtitle: Text("00.00"), //expense.toString(),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 4,
                color: Colors.orange[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.orange.withOpacity(.50),
                      ),
                      title: Text("Memo"),
                      subtitle: Text("00.00"), //expense.toString(),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 4,
                color: Colors.orange[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.orange.withOpacity(.50),
                      ),
                      title: Text("Memo"),
                      subtitle: Text("00.00"), //expense.toString(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

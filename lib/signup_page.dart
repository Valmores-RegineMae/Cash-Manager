import 'package:flutter/material.dart';

import 'constrant.dart';
import 'homepage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MySignUp(),
      ),
    );
  }
}

class MySignUp extends StatefulWidget {
  @override
  _MySignUpState createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              size: 30.0,
              color: Colors.grey[600],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Create an Account",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 60.0,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 5.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.account_circle,
                            size: 24.0, color: Colors.grey),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Full Name",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 60.0,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 5.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.email_outlined,
                            size: 24.0, color: Colors.grey),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 60.0,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 5.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.vpn_key, size: 24.0, color: Colors.grey),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          height: 50.0,
                          width: 135.0,
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(35)),
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()
                                  ),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                          )
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account ?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.grey[700]),
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    " Sign In Here",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(244, 161, 63, 1)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

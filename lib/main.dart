import 'signin_page.dart';
import 'package:flutter/material.dart';
import 'constrant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cash Manager',
      theme: ThemeData(
        fontFamily: "Nunito",
        primaryColor: kPrimaryColor,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/budget1.png")),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Cash Manager",
                          style: Theme.of(context).textTheme.headline5.copyWith(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignInPage();
                        },),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 90),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 26, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPrimaryColor,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Manage Now",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

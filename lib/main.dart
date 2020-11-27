import 'package:flutter/material.dart';
import 'appspage.dart';
import 'aboutpage.dart';
import 'quotespage.dart';

const orange = const Color(0xFFFFBF23);
const purple = const Color(0xFFA93AFF);

void main() {
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
    ));
}

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title:  Text(
                    "Main Page",style: TextStyle(
                        fontSize: 25,
                        color: Colors.indigoAccent,
                        ),
                    )
            ),

                body: Stack(
                children: [
                    Container(
                        child: Image.asset(
                            'images/bg.jpg',
                            width: 450,
                            height: 375,
                            fit: BoxFit.cover,
                        ),
                    ),

                    Container(
                        child: Center(
                            child: Container(
                                padding: EdgeInsets.all(30.0),
                                child: ListView(
                                    children: [
                                        Container(
                                            margin: const EdgeInsets.only(top: 40),
                                            padding: const EdgeInsets.only(top: 50),
                                            height: 450,
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(25.0),
                                                ),
                                                child: ListView(
                                                    children: [
                                                    Container(
                                                        margin: const EdgeInsets.only(left: 75.0, right: 35.0, top: 35.0),
                                                        height: 85,
                                                        child: RaisedButton(
                                                            shape: RoundedRectangleBorder(
                                                                //borderRadius: BorderRadius.circular(10.0),
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius.zero,
                                                                    topRight: Radius.circular(15.0),
                                                                    bottomLeft: Radius.zero,
                                                                    bottomRight: Radius.circular(15.0),
                                                                ),
                                                            ),
                                                            onPressed: () {
                                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AppsPage()),
                                                                );
                                                            },
                                                            padding: EdgeInsets.all(15.0),
                                                            color: Colors.indigoAccent,
                                                            child: Center(
                                                                child: Row(
                                                                    children: [
                                                                        Container(
                                                                            margin: const EdgeInsets.only(right: 10.0),
                                                                            child: Image.asset(
                                                                              'images/apps.png',
                                                                              height: 30,
                                                                            ),
                                                                        ),
                                                                        Text(
                                                                            'Application',
                                                                            style: TextStyle(
                                                                                fontSize: 22,
                                                                                color: Colors.white,
                                                                            ),
                                                                        ),
                                                                    ],
                                                                ),
                                                            )
                                                        ),
                                                    ),

                                                        Container(
                                                            margin: const EdgeInsets.only(left: 75.0, right: 35.0, top: 35.0),
                                                            height: 85,
                                                            child: RaisedButton(
                                                                shape: RoundedRectangleBorder(
                                                                    //borderRadius: BorderRadius.circular(10.0),
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft: Radius.zero,
                                                                        topRight: Radius.circular(15.0),
                                                                        bottomLeft: Radius.zero,
                                                                        bottomRight: Radius.circular(15.0),
                                                                    ),
                                                                ),
                                                                onPressed: () {
                                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()),
                                                                    );
                                                                },
                                                                padding: EdgeInsets.all(15.0),

                                                                color: orange,
                                                                child: Row(
                                                                    children: [
                                                                        Container(
                                                                            margin: const EdgeInsets.only(right: 10.0),
                                                                            child: Image.asset(
                                                                                'images/about.png',
                                                                                height: 30,
                                                                            ),
                                                                        ),
                                                                        Text(
                                                                            'About',
                                                                            style: TextStyle(
                                                                                fontSize: 22,
                                                                                color: Colors.white,
                                                                            ),
                                                                        ),
                                                                    ],
                                                                )
                                                            )
                                                        ),

                                                        Container(
                                                            margin: const EdgeInsets.only(left: 75.0, right: 35.0, top: 35.0),
                                                            height: 85,
                                                            child: RaisedButton(
                                                                shape: RoundedRectangleBorder(
                                                                    //borderRadius: BorderRadius.circular(10.0),
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft: Radius.zero,
                                                                        topRight: Radius.circular(15.0),
                                                                        bottomLeft: Radius.zero,
                                                                        bottomRight: Radius.circular(15.0),
                                                                    ),
                                                                ),
                                                                onPressed: () {
                                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>QuotesPage()),
                                                                    );
                                                                },
                                                                padding: EdgeInsets.all(15.0),
                                                                color: purple,
                                                                child: Row(
                                                                    children: [
                                                                        Container(
                                                                            margin: const EdgeInsets.only(right: 10.0),
                                                                            child: Image.asset(
                                                                                'images/quotes.png',
                                                                                height: 30,
                                                                            ),
                                                                        ),
                                                                        Text(
                                                                            'Quotes',
                                                                            style: TextStyle(
                                                                                fontSize: 22,
                                                                                color: Colors.white,
                                                                            ),
                                                                        ),
                                                                    ],
                                                                )
                                                            )
                                                        )
                                                    ],
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        )
                    ),

                    Container(
                        height: 325,
                        width: 15,
                        margin: const EdgeInsets.only(left: 70.0, top: 240.0),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.only(
                                topLeft:  const  Radius.circular(15.0),
                                bottomLeft: const  Radius.circular(15.0))
                        ),
                    ),
                ],
            )
        );
    }
}

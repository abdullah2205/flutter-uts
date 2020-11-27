import 'package:flutter/material.dart';
import 'package:shopping_cart2/main.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              title: Text('About Page'),
              backgroundColor: Colors.transparent,
              elevation: 0,
          ),

          body: Stack(
              children: [
                  Container(
                      child: Image.asset(
                          'images/bg1.jpg',
                          width: 450,
                          height: 375,
                          fit: BoxFit.cover,
                      ),
                  ),

                  Container(
                      padding: EdgeInsets.all(25.0),
                      margin: const EdgeInsets.only(top: 20),
                      child: ListView(
                          children: [
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  color: Colors.white70,
                                  child: Container(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                          children: [
                                              CircleAvatar(
                                                  radius: 130,
                                                  backgroundImage: AssetImage('images/me.jpg'),
                                              ),
                                              Container(
                                                  padding: const EdgeInsets.only(top: 20),
                                                  child: Text(
                                                      'Muhammad Abdullah',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: orange,
                                                      ),
                                                  ),
                                              ),
                                              Container(
                                                  padding: const EdgeInsets.only(top: 10),
                                                  child: Text(
                                                      '13.2019.1.90142',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                      ),
                                                  )
                                              ),
                                          ]
                                      )
                                  ),
                              ),

                              Card(
                                  margin: const EdgeInsets.only(top: 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  color: Colors.white70,
                                  child: Container(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                          children: [
                                              CircleAvatar(
                                                  radius: 130,
                                                  backgroundImage: AssetImage('images/nilam.jpg'),
                                              ),
                                              Container(
                                                  padding: const EdgeInsets.only(top: 20),
                                                  child: Text(
                                                      'Nilam Fadhilah',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: orange,
                                                      ),
                                                  ),
                                              ),
                                              Container(
                                                  padding: const EdgeInsets.only(top: 10),
                                                  child: Text(
                                                      '13.2018.1.00712',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                      ),
                                                  )
                                              ),
                                          ]
                                      )
                                  ),
                              ),

                              Card(
                                  margin: const EdgeInsets.only(top: 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  color: Colors.white70,
                                  child: Container(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                          children: [
                                              CircleAvatar(
                                                  
                                                  radius: 130,
                                                  backgroundImage: AssetImage('images/ara.jpg'),
                                              ),
                                              Container(
                                                  padding: const EdgeInsets.only(top: 20),
                                                  child: Text(
                                                      'Tiara Indra Arifien',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: orange,
                                                      ),
                                                  ),
                                              ),
                                              Container(
                                                  padding: const EdgeInsets.only(top: 10),
                                                  child: Text(
                                                      '13.2017.1.00613',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                      ),
                                                  )
                                              ),
                                          ]
                                      )
                                  ),
                              ),

                              Card(
                                  margin: const EdgeInsets.only(top: 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  color: Colors.white70,
                                  child: Container(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                          children: [
                                              CircleAvatar(
                                                  radius: 130,
                                                  backgroundImage: AssetImage('images/bg.jpg'),
                                              ),
                                              Container(
                                                  padding: const EdgeInsets.only(top: 20),
                                                  child: Text(
                                                      'M. Kikih Prasetyo',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: orange,
                                                      ),
                                                  ),
                                              ),
                                              Container(
                                                  padding: const EdgeInsets.only(top: 10),
                                                  child: Text(
                                                      '13.2017.1.00554',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                      ),
                                                  )
                                              ),
                                          ]
                                      )
                                  ),
                              ),
                          ],
                      ),
                  )
              ],
          ),
    );
  }
}

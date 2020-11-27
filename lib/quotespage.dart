import 'package:flutter/material.dart';

class QuotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              title: Text('Quotes Page'),
              backgroundColor: Colors.transparent,
              elevation: 0,
          ),

          body: Stack(
              children: [
                  Container(
                      child: Image.asset(
                          'images/bg2.jpg',
                          width: 450,
                          height: 375,
                          fit: BoxFit.cover,
                      ),
                  ),

                  Container(
                      padding: EdgeInsets.all(25.0),
                      child: ListView(
                          children: [
                              Container(
                                  child: (
                                      Text(
                                          'NGODING TEROSS \nTugas gak mari-mari, Jomblo sisan',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                          ),
                                      )
                                  )
                              ),

                              Container(
                                  margin: const EdgeInsets.only(left: 50, right: 50),
                                  child: (
                                      Image.asset(
                                          'images/onboarding.png',
                                      )
                                  ),
                              ),

                              Container(
                                  child: (
                                      Column(
                                          children: [
                                              SizedBox(height: 25.0),
                                              Text(
                                                  'Ternyata kalo ngoding gk secepat di filem-filem ya gaes. Tapi gpp yang semangat ya!\n\n'
                                                      'Karena ada cita-cita yang harus diwujudkan\nada masa depan yang harus dipersiapkan\n'
                                                      'd̶a̶n̶ ̶a̶d̶a̶ ̶p̶a̶c̶a̶r̶ ̶y̶a̶n̶g̶ ̶h̶a̶r̶u̶s̶ ̶d̶i̶ ̶h̶a̶l̶a̶l̶k̶a̶n̶\n'
                                                      'dan ada orangtua yang harus dibahagiakan\n',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.purple,
                                                  ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(left: 50, right: 50),
                                                  child: (
                                                      Center(
                                                          child: Text(
                                                              '- Kelompok 6 -',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors.purple,
                                                              ),
                                                          ),
                                                      )
                                                  )
                                              ),
                                          ],
                                      )
                                  )
                              ),
                          ],
                      ),
                  ),
              ],
          ),
      );
  }
}

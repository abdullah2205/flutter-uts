import 'package:flutter/material.dart';

class AppsPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<AppsPage> {
    int harga_ideapad = 1500000,
        harga_thinkpad = 2000000,
        qty_ideapad = 0, qty_thinkpad = 0,
        total_harga_ideapad = 0, total_harga_thinkpad = 0,
        total_semua = 0
    ;

    void tambah() { //tombol tambah jumlah
        setState(() {
            qty_ideapad++;
            total_harga_ideapad = qty_ideapad*harga_ideapad;
        });
    }

    void kurang() { //tombol kurang jumlah
        setState(() {
            if (qty_ideapad != 0)
                qty_ideapad--;
            total_harga_ideapad = total_harga_ideapad - harga_ideapad;
        });
    }

    void tambah2() {
        setState(() {
            qty_thinkpad++;
            total_harga_thinkpad = qty_thinkpad*harga_thinkpad;
        });
    }

    void kurang2() {
        setState(() {
            if (qty_thinkpad != 0)
                qty_thinkpad--;
            total_harga_thinkpad = total_harga_thinkpad - harga_thinkpad;
        });
    }

    void hitung_semua() {
        setState(() {
            total_semua = total_harga_ideapad + total_harga_thinkpad;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Application Page'),
                backgroundColor: Colors.indigoAccent,
                elevation: 0,
            ),

            body: ListView(
                children: [
                    Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                    Colors.indigoAccent,
                                    Colors.white,
                                ]),
                        ),
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                            children: [
                                Container( //judul gaes
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text(
                                        'Shopping Cart',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                    ),
                                ),

                                Card( //product 1
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.white70,
                                    child: Container(
                                        padding: EdgeInsets.all(20.0),
                                        child: Column(
                                            children: [
                                                Container(
                                                    padding: const EdgeInsets.only(top: 30),
                                                    child:
                                                    Image.asset( //gambar 1
                                                        'images/idea.webp',
                                                        width: 300,
                                                    ),
                                                ),
                                                Container(
                                                    padding: const EdgeInsets.only(top: 20),
                                                    child: Text(
                                                        'Lenovo IdeaPad Gaming 3',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                        ),
                                                    ),
                                                ),
                                                Container(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Text(
                                                        'Rp. 1,500,000',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.indigoAccent,
                                                        ),
                                                    )
                                                ),
                                            ]
                                        )
                                    )
                                ),

                                Container( //tombol jumlah
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Center(
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                                FloatingActionButton(
                                                    heroTag: 'btn1',
                                                    mini: true,
                                                    onPressed: kurang,
                                                    child: Icon(Icons.remove, color: Colors.black,),
                                                    backgroundColor: Colors.white,
                                                ),
                                                Text(' $qty_ideapad ',
                                                    style: TextStyle(fontSize: 25.0)),
                                                FloatingActionButton(
                                                    heroTag: 'btn2',
                                                    mini: true,
                                                    onPressed: tambah,
                                                    child: Icon(Icons.add, color: Colors.black,),
                                                    backgroundColor: Colors.white,
                                                ),
                                            ],
                                        ),
                                    ),
                                ),

                                Container( //harga
                                    padding: EdgeInsets.all(20.0),
                                    child: Center(
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                                Text(
                                                    'Total Harga',
                                                    style: TextStyle(fontSize: 20.0)
                                                ),
                                                Text(
                                                    'Rp. '+ '$total_harga_ideapad',
                                                    style: TextStyle(
                                                        fontSize: 20.0,
                                                        color: Colors.indigoAccent,
                                                        fontWeight: FontWeight.bold,
                                                    )
                                                ),
                                            ],
                                        ),
                                    ),
                                ),

                                Card( //product 2
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.white70,
                                    child: Container(
                                        padding: EdgeInsets.all(20.0),
                                        child: Column(
                                            children: [
                                                Container(
                                                    padding: const EdgeInsets.only(top: 30),
                                                    child: Image.asset( //gambar 2
                                                        'images/think.webp',
                                                        width: 300,
                                                    ),
                                                ),
                                                Container(
                                                    padding: const EdgeInsets.only(top: 20),
                                                    child: Text(
                                                        'Lenovo ThinkPad X1 Yoga',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                        ),
                                                    ),
                                                ),
                                                Container(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Text(
                                                        'Rp. 2,000,000',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.indigoAccent,
                                                        ),
                                                    )
                                                ),
                                            ]
                                        )
                                    ),
                                ),

                                Container( //tombol jumlah 2
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Center(
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                                FloatingActionButton(
                                                    heroTag: 'btn3',
                                                    mini: true,
                                                    onPressed: kurang2,
                                                    child: Icon(Icons.remove, color: Colors.black,),
                                                    backgroundColor: Colors.white,
                                                ),
                                                Text(' $qty_thinkpad ',
                                                    style: TextStyle(fontSize: 25.0)),
                                                FloatingActionButton(
                                                    heroTag: 'btn4',
                                                    mini: true,
                                                    onPressed: tambah2,
                                                    child: Icon(Icons.add, color: Colors.black,),
                                                    backgroundColor: Colors.white,
                                                ),
                                            ],
                                        ),
                                    ),
                                ),

                                Container( //harga 2
                                    padding: EdgeInsets.all(20.0),
                                    child: Center(
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                                Text(
                                                    'Total Harga',
                                                    style: TextStyle(fontSize: 20.0)
                                                ),
                                                Text(
                                                    'Rp. '+ '$total_harga_thinkpad',
                                                    style: TextStyle(
                                                        fontSize: 20.0,
                                                        color: Colors.indigoAccent,
                                                        fontWeight: FontWeight.bold,
                                                    )
                                                ),
                                            ],
                                        ),
                                    ),
                                ),

                                Container( //tombol
                                    padding: EdgeInsets.all(20.0),
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        onPressed: hitung_semua,
                                        padding: EdgeInsets.all(15.0),
                                        color: Colors.indigoAccent,
                                        child: Center(
                                            child: Column(
                                                children: [
                                                    Icon(Icons.shopping_cart, color: Colors.white),
                                                    Text(
                                                        'Checkout',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        )
                                    ),
                                ),

                                Container(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Column(
                                        children: [
                                            Text(
                                                'Total yang harus dibayar',
                                                style: TextStyle(
                                                    fontSize: 25.0,
                                                )
                                            ),
                                            Container(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Text(
                                                    'Rp. '+ '$total_semua',
                                                    style: TextStyle(
                                                        fontSize: 25.0,
                                                        color: Colors.indigoAccent,
                                                        fontWeight: FontWeight.bold,
                                                    )
                                                ),
                                            )
                                        ],
                                    )
                                )
                            ],
                        ),
                    )
                ],
            )
        );
    }
}
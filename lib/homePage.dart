import 'package:ecom1/secondPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String? a;
  String? b;
  String? c;

  Home(String b1,String b2,String b3 ,) {
    a = b1;
    b = b2;
    c= b3;
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Pimage = [
    "assest/image/acer.jpg",
    "assest/image/apple.jpg",
    "assest/image/asus.jpg",
    "assest/image/dell.jpg",
    "assest/image/hp.jpg",
    "assest/image/lenovo.jpg",
    "assest/image/msi.jpg",
    "assest/image/samsunge.jpg",
  ];
  List Pname = ["Acer Laptop",
    "Apple Mackbook",
    "Asus Laptop",
    "Dell Laptop",
    "HP Laptop",
    "LENOVO Laptop",
    "MSI Laptop",
    "SAMSUNGE Laptop"];

  List Pprice = [
    "200000",
    "30000",
    "40000",
    "80000",
    "30000",
    "10000",
    "200000",
    "30000",

  ];

  List Pdescrption=["Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
    "Unlocked\n16 MP Chip scrren\n16 GB\nwidth 40.5",
    "Unlocked\n16 GB\nWindows 11 Home\nwidth 39.5",
    "Unlocked\nCore i3\n8 GB\nwidth 39.5",
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("E-Commerce App", style: TextStyle(fontSize: 20)),

            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          backgroundColor: Colors.green.shade300,
          body: Container(
            margin: EdgeInsets.all(15),
            height: 700,
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 626,
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: Pname
                          .asMap()
                          .entries
                          .map(
                            (e) =>
                            Product(
                              Pimage[e.key],
                              Pname[e.key],
                              Pprice[e.key],
                                Pdescrption[e.key]
                            ),
                      ).toList(),
                    ),
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
  Widget Product(String image,String name,String price,String descrption)
  {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(image, name, price,descrption),));
          });
        },
        child: Container(
          height: 75,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.green,strokeAlign: StrokeAlign.outside,width: 2)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset("$image",),
                SizedBox(width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(name,style: TextStyle(color: Colors.green.shade900,fontWeight: FontWeight.bold,fontSize: 17),),
                    Text(price,style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.w600),),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


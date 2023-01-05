import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String a = '';
  String b = '';
  String c = '';
  String d='';

  SecondPage(String image, String name, String price,String  descrption)
  {
    a = image;
    b = name;
    c=  price;
    d= descrption;
  }

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green.shade100,
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Image.asset("${widget.a}", width: 300, height: 300),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.green.shade300,borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(40),
                              child: Text("Name :${widget.b}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,),
                              ),
                            ),
                            Text("Price: ${widget.c}",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,decorationStyle: TextDecorationStyle.dotted),),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("Descrption: ${widget.d}",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

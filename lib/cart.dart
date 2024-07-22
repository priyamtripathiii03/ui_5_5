import 'package:flutter/material.dart';
import 'package:ui_5_5/global.dart';
import 'package:ui_5_5/homePage.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){

          },
          child: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text('My Cart'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(Cart.length,(index)=>
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(product[index]['img']),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 60,width: 20,),
                      Text('${product[index]['price'].toString()}',
                        style: TextStyle(
                            fontSize: 20,color: Colors.red),),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),

    );
  }
}
int index=0;

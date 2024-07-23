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
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            for (int i = 0; i < cart.length; i++) {
              qty = qty + cart[i]['price'].toInt();
              amount = amount + cart[i]['price'];
            }
            Navigator.of(context).pushNamed('/total');
            // total = (amount * 18) / 100 + amount;
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            height: 70,
            width: 170,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.red.shade500,
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              'Total',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop('/total');
          },
          child: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text('My Cart',style: (TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
                cart.length,
                (index) => Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 200,
                      width: 450,
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
                              SizedBox(
                                height: 60,
                                width: 20,
                              ),
                              Text(
                                '\$ ${product[index]['price'].toString()}',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.red),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                cart.removeAt(index);
                              });
                            },
                            child: Icon(Icons.delete),
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

int index = 0;
double qty = 0;
double amount = 0;

int total = 0;

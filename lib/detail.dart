import 'package:flutter/material.dart';
import 'package:ui_5_5/global.dart';

import 'cart.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(product[selectindex]['img'])),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Text(
                product[selectindex]['name'],
                style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '\$ ${product[selectindex]['price'].toString()}',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            Text(
              product[selectindex]['detail'],
              style: TextStyle(color: Colors.black, fontSize: 16,),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/cart');
                cart.add(selectindex);

              },
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.red.shade500,
                      borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              '      Add To Cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

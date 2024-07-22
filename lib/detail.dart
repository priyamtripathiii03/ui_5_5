import 'package:flutter/material.dart';
import 'package:ui_5_5/global.dart';

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
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop('/home');
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:  AssetImage(product[selectindex]['img'])),
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.only(left: 5),
            height: 500,
            width: 450,
            color: Colors.grey.shade100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product[selectindex]['name'],style: TextStyle(color: Colors.black,fontSize: 25
                    ),),
                  ],
                ),
                Text('\ ${product[selectindex]['price'].toString()}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                ),),
                Text(product[selectindex]['detail'],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20),),

                Container(
                  margin: EdgeInsets.only(left: 20,top: 10),
                  height: 60,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.red.shade500,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 50,),
                      Text('Add To Cart',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      SizedBox(width: 30,),
                      Icon(Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 22,)
                    ],
                  ),
                )

              ],

            ),
          )

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'cart.dart';
import 'global.dart';

class Total extends StatefulWidget {
  const Total({super.key});

  @override
  State<Total> createState() => _TotalState();
}

class _TotalState extends State<Total> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        centerTitle: true,
        title: Text(
          'Total Bill',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();},
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),

      ),

      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {

            Navigator.of(context).pushReplacement('/home' as Route<Object?>);
      },
          child: Container(
            height: h * 0.1,
            width: w * 0.86,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff2a7f62),
            ),
            child: Text(
              'Pay Now',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: h * 0.8,
            width: w * 1,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "BILL DETAIL",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  SizedBox(
                    height: h * 0.010,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount"),
                      Text( '\$ ${product[index]['price'].toString()}',),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.010,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TAXES"),
                      Text("18%"),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.010,
                  ),
                  Divider(
                    height: 2,
                    indent: w * 0.001,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: h * 0.010,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total"),
                      Text(
                        '\$ ${product[index]['price'].toString()}',

                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

double total(List product)
{
  dynamic sum=0;
  for(int i=0;i<product.length;i++)
  {
    sum=sum+product[i]['price'];
  }
  dynamic total=(sum*18)/100;

  return total;
}
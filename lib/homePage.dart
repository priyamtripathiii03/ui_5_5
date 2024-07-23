import 'package:flutter/material.dart';
import 'package:ui_5_5/cart.dart';
import 'package:ui_5_5/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade50,
        leading:  Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/profile.jpg'),
                  )),
            ),
          ),
        ],
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15,top: 20),
              child: Text(
                'Search\n' 'your books here',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.redAccent,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 15),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text('Search title,topic and author...')),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.orange.shade800,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'See all',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            booksCatogary.length,
            (index) => Container(
              margin: const EdgeInsets.all(10),
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              alignment: Alignment.center,
              child: Text(
                booksCatogary[index],
                style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
              ),
            ),
          )),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    children: [Row(
                        children: List.generate(
                      product.length,
                      (index) => GestureDetector(
                        onTap: (){
                          selectindex=index;
                          Navigator.of(context).pushNamed('/detail');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 250,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(product[index]['img'])),
                                ),
                              ),
                              Text(
                                (product[index]['name']),
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                (product[index]['writer']),
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 19, color: Colors.grey),
                              ),
                              Text(
                               '\$ ${(product[index]['price']).toString()} ⭐',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
            ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                    product2.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                  AssetImage(product2[index]['img'])),
                            ),
                          ),
                          Text(
                            (product2[index]['name']),
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            (product2[index]['writer']),
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 19,
                                color: Colors.grey),
                          ),
                          Text(
                            ' \$ ${(product2[index]['price']).toString()} ⭐',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

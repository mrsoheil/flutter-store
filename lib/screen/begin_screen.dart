import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../model/productModel.dart';



class BeginScreen extends StatelessWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6FF),
        body: Column(
          spacing: 20,
          children: [
            TopbarSection(),
            SearchbarSection(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    margin: EdgeInsets.only(right: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    margin: EdgeInsets.only(right: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    margin: EdgeInsets.only(right: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    margin: EdgeInsets.only(right: 5),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "More...",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View all",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(0, 2))
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/dr.png',
                              fit: BoxFit.cover,
                              height: 200,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productList[index].name,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  productList[index].price,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class TopbarSection extends StatelessWidget {
  const TopbarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.shopping_cart_rounded,
                size: 28,
              ),
            )),
        Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.apps,
                size: 28,
              ),
            ))
      ],
    );
  }
}

class SearchbarSection extends StatelessWidget {
  const SearchbarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //widget1
        Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 45,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              spacing: 20,
              children: [
                Icon(
                  Icons.search,
                ),
                Text(
                  'Search...',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )),
        Card(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ),
        ),

        //widget2
      ],
    );
  }
}

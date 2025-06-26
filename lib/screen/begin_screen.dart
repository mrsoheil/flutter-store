import 'package:flutter/material.dart';

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
           SearchbarSection()
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
    return  Row(
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
    return  Row(
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
                Text('Search...',style: TextStyle(color: Colors.grey),)
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

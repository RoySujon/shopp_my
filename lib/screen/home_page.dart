// ignore_for_file: prefer_const_constructors

// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopp_my/utls/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top * 1.5,
          left: 16,
        ),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            SizedBox(height: 30),
            SizedBox(
              height: 50,

              // color: Colors.amber,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Center(
                        child: GestureDetector(
                          onTap: () {
                            x = index;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: index == x
                                      ? Colors.transparent
                                      : Colors.black),
                              borderRadius: BorderRadius.circular(15),
                              color:
                                  index == x ? kMainColor : Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: HeadText(
                                products[index].toString(),
                                fs: 12,
                                clr: index == x ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: products.length),
            ),
            HeadText(
              'Flash Deal',
              fs: 10,
              fw: FontWeight.w700,
            ),
            Container(
              color: Colors.amber,
              height: 200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                          child: Stack(
                        children: [
                          Image.asset('assets/images/product1.png'),
                        ],
                      )),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 10),
            )
          ],
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {},
        color: Colors.amber,
        child: Icon(Icons.add),
      ),
    );
  }
}

List products = ['Watches', 'Shoes', 'Laptop & Computer', 'Clothes'];
var x;

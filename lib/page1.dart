import 'package:flutter/material.dart';
import 'package:orange/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map<String, dynamic>> list = [
    {
      'colors': Color(0xffFAE1D9),
      'colors2': Colors.red.shade800,
      'image': 'assets/image/stwaberry.png',
      'name': 'Fruits',
    },
    {
      'colors': Color(0xffEAEED8),
      'colors2': Color(0xff93B96C),
      'image': 'assets/image/vegitoble.png',
      'name': 'Vegetables',
    },
    {
      'colors': Color(0xffFFE7A4),
      'colors2': Color(0xffFBCA19),
      'image': 'assets/image/chilli.png',
      'name': 'Chilli',
    },
  ];
  List<Map<String, dynamic>> list2 = [
    {
      'image': "assets/image/orenge.png",
      'name': "Orange",
      'sname': "Navel Orange",
      'lname': '1.5Kgs it ',
      'lname2': 'Rs.100 Only',
      'colors': Color(0xffFF9501),
    },
    {
      'image': "assets/image/mango.png",
      'name': "Mango",
      'sname': "Banganpalli",
      'lname': '1.5Kgs it ',
      'lname2': 'Rs.100 Only',
      'colors': Color(0xffFAB706),
    },
    {
      'image': "assets/image/banana.png",
      'name': "Banana",
      'sname': "Yellow Banana",
      'lname': '1.5Kgs it ',
      'lname2': 'Rs.200 Only',
      'colors': Color(0xffFAB706),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          backgroundColor: Colors.white,
          unselectedIconTheme: IconThemeData(color: Colors.black26),
          selectedIconTheme: IconThemeData(color: Colors.orange),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_agenda, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined, size: 30),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined, size: 30), label: ""),
          ]),
      backgroundColor: Color(0xffFFFAF2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 17),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.clear_all_outlined,
                          size: 25, color: Colors.black),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 20, fontFamily: "Poppins-Regular"),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Tanveer",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            fontFamily: "Poppins-Bold"),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 260,
                        //color: Colors.black,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search ',
                            hintStyle: TextStyle(fontSize: 12),
                            contentPadding: EdgeInsets.only(left: 18, top: 5),
                            suffixIcon: Icon(Icons.search_rounded),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orangeAccent,
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child:
                                Icon(Icons.keyboard_voice, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 65,
                width: 350,
                //color: Colors.black,
                child: ListView.builder(
                  itemCount: list.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 3),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 23, left: 0, top: 5, bottom: 5),
                              child: Row(
                                children: [
                                  Image.asset(
                                    list[index]['image'],
                                    height: 50,
                                    width: 50,
                                  ),
                                  Text(list[index]['name'],
                                      style: TextStyle(
                                          color: list[index]['colors2'],
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: list[index]['colors'],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 450,
              width: 400,
              //color: Colors.green,
              child: ListView.builder(
                itemCount: list2.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 430,
                              width: 200,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 25,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list2[index]['name'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              fontFamily: "Poppins-Regular"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.favorite_border,
                                                  color: Colors.white),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 35),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            list2[index]['sname'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins-Regular',
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  list2[index]['lname'],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Poppins-Regular',
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  list2[index]['lname2'],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Poppins-Regular',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Kg',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white,
                                                          fontFamily:
                                                              'Poppins-Regular'),
                                                    ),
                                                    Container(
                                                      height: 40,
                                                      width: 80,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            '500g',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    'Poppins-Regular'),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .arrow_drop_down,
                                                            color: Colors.white,
                                                          )
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color:
                                                            Colors.orangeAccent,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 200,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            Page2(
                                                                              image: list2[index]['image'],
                                                                              sname: list2[index]['sname'],
                                                                              colors: list2[index]['colors'],
                                                                            )));
                                                          },
                                                          child: Text(
                                                            'ADD TO CART',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins-Regular',
                                                                color: Colors
                                                                    .orange),
                                                          ),
                                                        )
                                                      ]),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: list2[index]['colors'],
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                          left: -3,
                          child: Container(
                            height: 300,
                            width: 200,
                            // color: Colors.red,
                            child: Image.asset(list2[index]['image']),
                          ))
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

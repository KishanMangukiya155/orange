import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key, this.image, this.sname, this.colors});

  final image;
  final sname;
  final colors;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int selectd = 0;
  List<Map<String, dynamic>> list = [
    {
      'name': '500g',
    },
    {
      'name': '1g',
    },
    {
      'name': '1.5kg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        )),
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 420,
                    width: 270,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 50, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 160, bottom: 30),
                          child: CircleAvatar(
                            backgroundColor: Colors.black26,
                            maxRadius: 23,
                            child:
                                Icon(Icons.add, size: 20, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(30)),
                      color: Colors.orange,
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: -40,
                      child: Container(
                        height: 270,
                        width: 280,
                        //color: Colors.green,
                        child: Image.asset(widget.image),
                      )),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.sname,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins-Bold'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Rs.',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins-Bold'),
                        ),
                        Text(
                          '60',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins-Bold'),
                        ),
                        Text(
                          '/Kg',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins-Bold'),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(fontFamily: 'Poppins-Bold'),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                        "Considered to be the most aromatic in\n"
                        "the orange family having a tart yet\n"
                        "sweet flavour",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                            fontFamily: "Poppins-Regular",
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: 350,
                  height: 65,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  // color: Colors.grey,
                  child: ListView.builder(
                    itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectd = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 19),
                                  child: Text(list[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: selectd == index
                                              ? Color(0xffFF9500)
                                              : Colors.grey.shade500)),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: selectd == index
                                      ? Color(0xffFFE2BA)
                                      : Colors.grey.shade100,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.local_mall_outlined,
                          color: Color(0xffFF9500)),
                      decoration: BoxDecoration(
                          color: Color(0xffFFE2BA),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 50,
                      width: 240,
                      child: Center(
                          child: Text(
                        'PAY NOW  >',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Poppins-Bold'),
                      )),
                      decoration: BoxDecoration(
                          color: Color(0xffFF9500),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

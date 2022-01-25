import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/widget/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning 👋",
                          style: TextStyle(
                            color: Color(
                              0xfff8753c,
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            letterSpacing: 0,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'Nik Nerker',
                                style: TextStyle(
                                  color: Color(
                                    0xff000000,
                                  ),
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  letterSpacing: 0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.all(20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0),
                                        blurRadius: 6.0)
                                  ]),
                              child:
                                  Center(child: Icon(CupertinoIcons.search))),
                        ),
                        CircleAvatar(
                          radius: 27,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: width * 0.9,
              height: height * 0.22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: HexColor.fromHex('#ce6ffe'),
                gradient: LinearGradient(
                    begin: FractionalOffset.topRight,
                    end: FractionalOffset.bottomLeft,
                    colors: [
                      Color(
                        0xbcb486ff,
                      ),
                      Color(
                        0xffa66fff,
                      ),
                    ],
                    stops: [
                      0,
                      0.49,
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

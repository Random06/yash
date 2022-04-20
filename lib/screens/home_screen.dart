import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left:25,top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Hi,Yash', style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey
                ),),
                Text('Discover Latest Book', style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
              ],
            )

            ),
            Container(
              height: 39,
                margin: EdgeInsets.only(left: 25, right: 25, top: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12
                ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLength : 100,
                    style:TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19, right: 50,bottom: 8),
                      border: InputBorder.none,
                      hintText: 'SEARCH BOOKS..',
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  Positioned(right: 0 ,child: Image.asset(
                    "assets/images/background.png",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                  ),
                  ),
                    ],
              )
            ),
            Container(height: 25,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.only(left: 25),
            child: DefaultTabController(length: 3,
                child: TabBar(
                  labelPadding: EdgeInsets.all(0),
                  indicatorPadding: EdgeInsets.all(0),
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),
                  unselectedLabelStyle:TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                  ) ,

                  tabs: [
                  Tab(
                    child: Container(
                      child: Text('NEW BOOKS'),
                      margin: EdgeInsets.only(right: 23),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text('TRENDING BOOKS'),
                      margin: EdgeInsets.only(right: 23),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text('BESTSELLER BOOKS'),
                      margin: EdgeInsets.only(right: 23),
                    ),
                  )
                ],
            )),
            ),
            Container(
              margin: EdgeInsets.only(top:21),
              height: 210,
              child: ListView.builder(
                padding: EdgeInsets.only(left:25, right:6),
                  // itemCount: newbooks.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                return Container(
                  height: 210,
                  margin: EdgeInsets.only(right: 19),
                  width: 153,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    image: DecorationImage(image: AssetImage('/assets/images/book_1.png'),fit: BoxFit.cover,
                        alignment: Alignment.topCenter)
                  ),
                );
              }),
            ),
            Padding(padding: EdgeInsets.only(left:25,top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('POPULAR BOOKS', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                    ),),
                  ],
                )
            ),
              // ListView.builder(
              //   padding: EdgeInsets.only(top:25, right: 25,left: 25),
              //     physics: BouncingScrollPhysics(),
              //     shrinkWrap: true,
              //     // itemCount: popular.length,
              //     itemBuilder: (context, index){
              //   return Container(
              //     margin: EdgeInsets.only(bottom: 19),
              //     height: 81,
              //     color: Colors.black12,
              //     width: MediaQuery.of(context).size.width-50,
              //
              //     child: Row(
              //       children: [
              //         Container(
              //           height: 81,
              //           width: 62,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(5),
              //             image: DecorationImage(image: AssetImage('/assets/images/book_2.jpg'))
              //
              //           ),
              //         )
              //       ],
              //     ),
              //   );
              // })
          ],
        )
      )
    );
  }
}
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/ic_img1.jpg',
    'assets/images/ic_img2.jpg',
    'assets/images/ic_img3.jpg',
    'assets/images/ic_img4.jpg',
    'assets/images/ic_img5.jpg',
    'assets/images/ic_img1.jpg',
    'assets/images/ic_img2.jpg',
    'assets/images/ic_img3.jpg',
    'assets/images/ic_img4.jpg',
    'assets/images/ic_img5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor:Colors.deepOrange,
        leading: Icon(Icons.menu),
        title: Center(
          child: Text("Apple Products"),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.yellow[800],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text("7"),
                ),
              ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
          //  #Header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_img3.jpg'),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.01)
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lifestyle sale",style: TextStyle(color: Colors.white,fontSize: 35),),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text("Shop Now",style: TextStyle(color: Colors.grey[900]),),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.count(
              crossAxisCount: 1,
              children: _listItem.map((item) => cellOfList(item)).toList(),
              )
            )
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Icon(Icons.favorite,color: Colors.red,size: 45,)
            ],
        ),
      ),
    );
  }
}


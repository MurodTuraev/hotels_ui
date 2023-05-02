import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // @header
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_header.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]
                  )
                ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 125,),
                  Text('Best Hotels Ever',style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),),
                  SizedBox(height: 50,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey,),
                        hintText: "Search for hotels",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 18,)
                      ),
                    ),
                  )
                ],
              ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(right: 20,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Business hotels', style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/ic_hotel1.jpg', name: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', name: 'Hotel 2'),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Text('Business hotels', style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/ic_hotel3.jpg', name: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', name: 'Hotel 2'),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Text('Business hotels', style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/ic_hotel5.jpg', name: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel1.jpg', name: 'Hotel 2'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, name}){
    return AspectRatio(
      aspectRatio: 1/1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.1),
              ]
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(name, style: TextStyle(color: Colors.white, fontSize: 24),),
              SizedBox(width: 50,),
              Expanded(
                child: Icon(
                  Icons.favorite,
                  color: Colors.deepOrange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

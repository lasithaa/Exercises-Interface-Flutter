import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            color: Color(0xFFF5CEBB),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment:Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage('assets/menu.png'),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text("Good Morning \nShishir",style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),

                    child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            hintText: "Search",
                          border: InputBorder.none,
                        ),
                    ),
                  ),
                  Expanded(

                    child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: .85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10,
                        children: [
                          Container(

                            padding:EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: [
                                BoxShadow(offset: Offset(0,17),
                                blurRadius:1,
                                  spreadRadius: -23,

                                )
                              ]
                            ),
                            child: Column(

                              children: [
                                Spacer(),
                                Image(

                                image: AssetImage('assets/burger.png')),
                                Spacer(),
                                Text("Diet Recommendation",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(

                            padding:EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Column(

                              children: [
                                Spacer(),
                                Image(

                                    image: AssetImage('assets/exersice.png')),
                                Spacer(),
                                Text("Kegel Exercises",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Column(

                              children: [
                                Spacer(),
                                Image(

                                    image: AssetImage('assets/yoga.png')),
                                Spacer(),
                                Text("Meditation",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(

                            padding:EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Column(

                              children: [
                                Spacer(),
                                Image(

                                    image: AssetImage('assets/meditation.png')),
                                Spacer(),
                                Text("Yoga",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          )

                        ],
                    ),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

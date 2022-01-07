import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_test/controller.dart';
import 'package:technical_test/memo.dart';
import 'package:technical_test/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      const MyHomePage(title: 'Flutter Demo Home Page'),
      // DisplayMemo(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final displayitem = Get.put(DisplayItem());
    return Scaffold(
        appBar: AppBar(
          title: Text('InfoHub'),
          backgroundColor: Colors.indigo,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: 
        SingleChildScrollView(
          child: Column(
            children: [
              Display(title: "Announcement"),
              Display(title: "Media"),
              InkWell(
                onTap:() => Get.to(() => DisplayMemo(memo: "Memo")), 
               child: Display(title: "Memo")),
              Display(title: "Media"),
              Display(title: "Tan Sri Food For Thought"),
              Display(title: "Tan Sri Philosophies"),
              Display(title: "TG Health Info"),
                     
                 
            ],
          ),
        ),
                
          // ListView.builder(
          //     itemCount: displayitem.display.length,
          //     itemBuilder: (context, index) {
          //      return Padding(
          //         padding: const EdgeInsets.all(9.0),
          //         child: Container(
          //           width: double.infinity,
          //           height: 130,
          //           decoration: BoxDecoration(
          //             color: Colors.indigo[400],
          //             borderRadius: BorderRadius.all(Radius.circular(5)),
          //             boxShadow: [
          //               BoxShadow(
          //                   color: Colors.black.withAlpha(90),
          //                   blurRadius: 8.0),
          //             ],
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             children: <Widget>[
          //               Expanded(
          //                 flex: 1,
          //                 child: IconButton(
          //                   icon: Icon(Icons.folder_open_rounded,
          //                       color: Colors.white),
          //                   onPressed: () { },
          //                 ),

          //               ),
          //               Expanded(
          //                 flex: 4,
          //                 child: Padding(
          //                   padding: EdgeInsets.only(left: 50),
          //                   child: Text(
          //                   displayitem.display[index].categoryName,
          //                     style: TextStyle(
          //                       fontFamily: 'FiraSans',
          //                       color: Colors.grey[100],
          //                       fontSize: 24,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //               Expanded(
          //                 flex: 1,
          //                 child: IconButton(
          //                   icon: Icon(Icons.arrow_right_outlined,
          //                       color: Colors.white),
          //                   onPressed: () {
          //                    Get.to(() => DisplayMemo(memo: "Memo"));
          //                   },
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     })
              );
    
  }
}

class Display extends StatelessWidget {
  final String title;
  const Display({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(90),
                        blurRadius: 8.0),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(Icons.folder_open_rounded,
                            color: Colors.white),
                        onPressed: () { },
                      ),
        
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                       title,
                          style: TextStyle(
                            fontFamily: 'FiraSans',
                            color: Colors.grey[100],
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(Icons.arrow_right_outlined,
                            color: Colors.white),
                        onPressed: () {
                        
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}

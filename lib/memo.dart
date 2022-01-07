import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:technical_test/controller.dart';

class DisplayMemo extends StatelessWidget {
  final memo;
  DisplayMemo({this.memo});
  final displayitem = Get.put(DisplayItem());

  List memos = [].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Memo'),
          backgroundColor: Colors.indigo,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: ListView.builder(
            itemCount: displayitem.display.length,
            itemBuilder: (context, index) {
              for (int i = 0; i < displayitem.display.length; i++) {
                if (displayitem.display[i].categoryName == "Memo") {
                  memos.add(displayitem.display[i]);
                }
              }
              return Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                  child: memo == displayitem.display[index].categoryName
                      ? Container(
                          width: double.infinity,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withAlpha(90),
                                  blurRadius: 8.0),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      icon: Icon(Icons.file_copy_rounded,
                                          color: Colors.black),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      displayitem.display[index].fileName,
                                      style: TextStyle(
                                        fontFamily: 'FiraSans',
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    displayitem.display[index].modifiedDate,
                                    style: TextStyle(
                                      fontFamily: 'FiraSans',
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : Container(
                          child: Text(''),
                        ));
            }));
  }
}

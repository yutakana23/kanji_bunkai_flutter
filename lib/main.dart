import 'package:flutter/material.dart';
import 'choice_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '漢字分解演習システム(LEL2021)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.all(15.0),
                  height: 180.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 3,
                      ),
                      top: BorderSide(
                        color: Colors.black,
                        width: 3,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 3,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('問題１-１(Question1-1)',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(' 以下の漢字[道]を分解するとき、適切な分け方のパターンを選びなさい。(Choose the pattern which the following kanji can be decomposed.)',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                height: 480.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border(
                    left: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    top: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    right: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120.0,
                            height: 120.0,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '道',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 90.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 220.0,
                            height: 130.0,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '<音読み（O-n）>',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'ドウ', //ここはDATAに。
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    '<訓読み（Ku-n）>',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'みち',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 10.0, bottom: 10.0, right: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Text('選択肢１(Choice1)'
                                          ),
                                          Image.asset(
                                            'images/style1.png',
                                            width: 110,
                                            height: 110,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Text('選択肢2(Choice2)'
                                          ),
                                          Image.asset(
                                            'images/style2.png',
                                            width: 110,
                                            height: 110,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Text('選択肢3(Choice3)'
                                          ),
                                          Image.asset(
                                            'images/style3.png',
                                            width: 110,
                                            height: 110,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Text('選択肢4(Choice4)'
                                          ),
                                          Image.asset(
                                            'images/style10.png',
                                            width: 110,
                                            height: 110,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ChoiceBox(),
            ],
          ),
        ),
      ),
    );
  }
}

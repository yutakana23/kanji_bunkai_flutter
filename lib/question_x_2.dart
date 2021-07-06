import 'package:flutter/material.dart';
import 'check_box.dart';

class Question2 extends StatelessWidget {
  // var _checkBox2 = false;
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
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text('戻る'),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                height: 210.0,
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
                      child: Text('問題１-２(Question1-2)',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(' 以下の漢字[道]を分解するとき、この漢字を作るために必要な部品を選択肢の中から選択しなさい。（When disassembling the following kanji, select the parts required to make this kanji from the following.）',
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
                              child: Container(
                                width: double.infinity,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('問題１−１の答え',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    Image.asset(
                                      'images/style1.png',
                                      width: 220,
                                      height: 220,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              children: [
                                Text('Parts 1'),
                                Image.asset(
                                  'images/kanji_components/sinnyo.png',
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
                            child:  Column(
                              children: [
                                Text('Parts 2'),
                                Image.asset(
                                  'images/kanji_components/siro.png',
                                  width: 110,
                                  height: 110,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              children: [
                                Text('Parts 3'),
                                Image.asset(
                                  'images/kanji_components/kubi.png',
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
                            child:  Column(
                              children: [
                                Text('Parts 4'),
                                Image.asset(
                                  'images/kanji_components/ue.png',
                                  width: 110,
                                  height: 110,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              Text('Parts 5'),
                              Image.asset(
                                'images/kanji_components/u.png',
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
                          child:  Column(
                            children: [
                              Text('Parts 6'),
                              Image.asset(
                                'images/kanji_components/arakajime.png',
                                width: 110,
                                height: 110,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: CheckBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



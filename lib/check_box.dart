import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CheckBox extends StatefulWidget {

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {

  var _checkBox1 = false;
  var _checkBox2 = false;
  var _checkBox3 = false;
  var _checkBox4 = false;
  var _checkBox5 = false;
  var _checkBox6 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('＜選択肢(Choices)＞',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                child: const Text('決定(OK)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  if(_checkBox1==true && _checkBox2==false && _checkBox3==true && _checkBox4 == false && _checkBox5 == false && _checkBox6 == false){ //ここをkanji_brainから引っ張ってくる
                    Alert(
                      context: context,
                      type: AlertType.warning,
                      title: "正解です。次の問いに進みます。",
                      desc: "Is the correct answer. Proceed to the next question.",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "戻る(RETURN)",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () => Navigator.pop(context),
                          color: Color.fromRGBO(0, 179, 134, 1.0),
                        ),
                        DialogButton(
                          child: Text(
                            "次へ（NEXT）",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context){
                            //   return Question2();
                            // }));
                          },
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(116, 116, 191, 1.0),
                            Color.fromRGBO(52, 138, 199, 1.0),
                          ]),
                        ),
                      ],
                    ).show();
                    // Alert(context: context, title: "正解です。次の問いに進みます。", desc: "Is the correct answer. Proceed to the next question.").show();
                    // _questionNum++;
                  }else{
                    Alert(
                      context: context,
                      type: AlertType.warning,
                      title: "不正解です。選択し直してください。",
                      desc: "It's an incorrect answer. Please select again.",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "戻る(RETURN)",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () => Navigator.pop(context),
                          color: Color.fromRGBO(0, 179, 134, 1.0),
                        ),
                      ],
                    ).show();
                    // Alert(context: context, title: "不正解です。選択し直してください。", desc: "It's an incorrect answer. Please select again.").show();
                  }
                },
              ),
            ],
          ),
        ),
        CheckboxListTile(
          value: _checkBox1,
          title: Text(
            'Parts 1',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              _checkBox1 = value!;
            });
          },
        ),
        CheckboxListTile(
          value: _checkBox2,
          title: Text(
            'Parts 2',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              _checkBox2 = value!;
            });
          },
        ),
        CheckboxListTile(
          value: _checkBox3,
          title: Text(
            'Parts 3',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              _checkBox3 = value!;
            });
          },
        ),
        CheckboxListTile(
          value: _checkBox4,
          title: Text(
            'Parts 4',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              _checkBox4 = value!;
            });
          },
        ),
        CheckboxListTile(
          value: _checkBox5,
          title: Text(
            'Parts 5',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              _checkBox5 = value!;
            });
          },
        ),
        CheckboxListTile(
          value: _checkBox6,
          title: Text(
            'Parts 6',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              _checkBox6 = value!;
            });
          },
        ),
      ],
    );
  }
}
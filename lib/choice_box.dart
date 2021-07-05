import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question_x_2.dart';

enum RadioValue{ FIRST, SECOND, THIRD, FOURS}

class ChoiceBox extends StatefulWidget {
  @override
  _ChoiceBoxState createState() => _ChoiceBoxState();
}

class _ChoiceBoxState extends State<ChoiceBox> {
  RadioValue _gValue = RadioValue.FIRST;
  //int _questionNum = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    if(_gValue == RadioValue.FIRST){ //ここをkanji_brainから引っ張ってくる
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
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Question2();
                              }));
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
          RadioListTile(
            title: Text('選択肢 1(Choice 1)'),
            value: RadioValue.FIRST,
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('選択肢 2(Choice 2)'),
            value: RadioValue.SECOND,
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('選択肢 3(Choice 3)'),
            value: RadioValue.THIRD,
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('選択肢 4(Choice 4)'),
            value: RadioValue.FOURS,
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
        ],
      ),
    );
  }

  _onRadioSelected(value) {
    setState(() {
      _gValue = value;
    });

  }
}

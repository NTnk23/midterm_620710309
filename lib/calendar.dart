// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _controller = TextEditingController();
  var _feedbackText = '';
  var _boxCount = 0;
  var _showBox = true;

  @override
  Widget build(BuildContext context) {
    var blueBox = Container(width: 20, height: 20, color: Colors.blue);

    var boxList = <Widget>[];


    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(width: 10),
            Text('CALENDAR 2023'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(flex: 1,child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {}, child: Text('January')),
                  )),
                  Expanded(flex: 1,child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {}, child: Text('February')),
                  )),
                  Expanded(flex: 1,child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {}, child: Text('March')),
                  )),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OutlinedButton(
                      onPressed: () {
                      },
                      child:
                      Text('January' ),


                    ),
                  ),

                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _boxCount++;
                      });
                    },
                    child: Text('April'),
                  ),
                  OutlinedButton(
                    onPressed: (){
                      setState(() {
                        _showBox = !_showBox;
                      });
                    },
                    child: Text('July'),
                  ),
                  OutlinedButton(
                    onPressed: (){
                      setState(() {
                        _showBox = !_showBox;
                      });
                    },
                    child: Text('October'),
                  ),
                ],
              ),
            ),
            Text(_feedbackText),
          ],
        ),
      ),
    );
  }
}
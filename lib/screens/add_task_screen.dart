import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/models/task.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newtasktitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'ADD TASK',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newtext){
                newtasktitle=newtext;
              },
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              child: Text(
                'ADD',
              style: TextStyle(
                color: Colors.white,
              ),),
              color: Colors.lightBlueAccent,
              onPressed: (){
                final task=Task(name: newtasktitle);
                Provider.of<TaskData>(context,listen: false).addTask(newtasktitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

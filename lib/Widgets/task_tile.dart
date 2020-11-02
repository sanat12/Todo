import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String tasktitle;
  final Function  callback;
  final Function longpresscallback;
  TaskTile({this.ischecked,this.tasktitle,this.callback,this.longpresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longpresscallback ,
      title: Text(
        tasktitle,
      style: TextStyle(
        decoration:ischecked? TextDecoration.lineThrough:null,
      ),
      ),
      trailing:Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged:callback,
      ),
    );
  }
}


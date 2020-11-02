import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskdata,child){
        return ListView.builder(
          itemBuilder:(context,index){
            final task=taskdata.tasks[index];
            return TaskTile(
                tasktitle: task.name,
                ischecked: task.isdone,
                callback:(checkboxstate){
                  taskdata.updatetask(task);
                },
              longpresscallback: (){
                  taskdata.delete(task);
              },
            );
          },
          itemCount:  taskdata.taskCount,
        );
      },
    );
  }
}
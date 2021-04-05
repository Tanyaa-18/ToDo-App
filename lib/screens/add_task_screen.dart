import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_list.dart';

import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  // final Function addTaskCallback;
  // AddTaskScreen( this.addTaskCallback);

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    newTaskTitle=value;
                  },
                ),
                Flexible(
                child: FlatButton(
                  onPressed:(){
                //addTaskCallback(addMessage);
                 Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                    child: Text('Add',
                    style:TextStyle(
                      color: Colors.white,
                    )
                    ),
                  color: Colors.lightBlueAccent,
                )
                ),
              ],
            ),
          )

        ),

    );
  }
}

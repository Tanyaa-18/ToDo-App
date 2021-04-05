import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'task_tile.dart';
class TaskList extends StatelessWidget {

// final List<Task> tasks;
// TaskList(this.tasks);


  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: [
    //     TaskTile(),
    //     TaskTile(),
    //     TaskTile(),
    //   ],
    //
    // );
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task= taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                //taskData.tasks[index].name,
                //Provider.of<TaskData>(context).tasks[index].name,
                //widget.tasks[index].name,
                isChecked: task.isDone,
                //taskData.tasks[index].isDone,
                //Provider.of<TaskData>(context).tasks[index].isDone,
                //widget.tasks[index].isDone,
                checkboxCallback: (newValue) {
                  taskData.updateTask(task);
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                },
                longPressCallBack: (){
                  taskData.deleteTask(task);
            },
              //addTask: tasks.,
            );
          },
          itemCount: taskData.taskCount,
          //Provider.of<TaskData>(context).tasks.length,
          // widget.tasks.length,
        );
      },

    );
  }
}
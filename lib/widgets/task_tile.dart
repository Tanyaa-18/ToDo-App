import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
// bool isChecked=false;
// void checkboxCallBack(bool newValue){
//   setState(() {
//      isChecked=newValue;
//    });
// }
final String taskTitle;
final bool isChecked;
final Function checkboxCallback;
final String addTask;
final Function longPressCallBack;
TaskTile({this.isChecked,this.taskTitle, this.checkboxCallback, this.addTask, this.longPressCallBack});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskTitle,
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough:null,
      ),
      ),
      trailing:Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,//checkBoxState
          onChanged:checkboxCallback,//toggleCheckboxState
      ),  // TaskCheckbox(checkBoxState:isChecked, toggleCheckboxState: checkboxCallBack),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {//now no need for the stateful widget, we can convert it into a stateless widget for gloabal
//   final bool checkBoxState;
//   final Function toggleCheckboxState;
//   TaskCheckbox({this.checkBoxState,this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkBoxState,//isChecked,
//       onChanged:toggleCheckboxState
//
//
//     );
//   }
// }
//

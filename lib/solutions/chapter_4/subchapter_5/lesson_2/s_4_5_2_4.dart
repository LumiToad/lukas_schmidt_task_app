import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return ShowHideNameWidget();
  }
}


class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  _ShowHideNameWidgetState(){
    currentButtonText = buttonTextShow;
  }

  String myName = "LumiToad";
  String currentNameText = "";

  String buttonTextShow = "Name anzeigen";
  String buttonTextHide = "Name verstecken";
  String currentButtonText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(currentNameText),
        ElevatedButton(
          onPressed: () { 
            setState(() {
                currentNameText = (currentNameText == "") ? myName : "";
                currentButtonText = (currentButtonText == buttonTextShow) ? buttonTextHide : buttonTextShow;
              });
            },
          child: Text(currentButtonText)
          )
      ],
    );
  }
}
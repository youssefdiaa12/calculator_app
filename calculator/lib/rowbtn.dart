import 'package:flutter/material.dart';
typedef functype=void Function(String);
class rowbtn extends StatelessWidget {
  String a1,a2,a3,a4;
  functype  onpressedbtn;

rowbtn(this.a1, this.a2, this.a3, this.a4,{required this.onpressedbtn});
  @override
  Widget build(BuildContext context) {
    return    Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Expanded(child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(onPressed:(){
          onpressedbtn(a1);
        }, child: Text(a1,style: TextStyle(fontSize: 24),)),
      )),
      Expanded(child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(onPressed:(){
          onpressedbtn(a2);
        }, child: Text(a2,style: TextStyle(fontSize: 24),)),
      )),
      Expanded(child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(onPressed:(){
          onpressedbtn(a3);
        }, child: Text(a3,style: TextStyle(fontSize: 24),)),
      )),
      Expanded(child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(onPressed:(){
          onpressedbtn(a4);
        }, child: Text(a4,style: TextStyle(fontSize: 24),)),
      )),
    ],);
  }
}

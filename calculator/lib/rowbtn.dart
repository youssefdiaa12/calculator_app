import 'package:flutter/material.dart';
typedef functype=void Function(String);
class rowbtn extends StatelessWidget {
  String a1,a2,a3,a4,a5;
  functype  onpressedbtn;

rowbtn(this.a1, this.a2, this.a3, this.a4,this.a5,{required this.onpressedbtn});
  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
            width: 70,
            height:70,
            child: ElevatedButton(
                onPressed: () {
                  onpressedbtn(a1);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey, // Set the background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90), // Make the button circular
                  ),
                ),
                child: Text(
                  a1,
                  style: const TextStyle(fontSize: 24),
                ),
            ),
          ),
        ),
      ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 70,
              height:70,
              child: ElevatedButton(
                onPressed: () {
                  onpressedbtn(a2);
                },
                child: Text(
                  a2,
                  style: const TextStyle(fontSize: 24),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey, // Set the background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90), // Make the button circular
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 70,
              height:70,
              child: ElevatedButton(
                onPressed: () {
                  onpressedbtn(a3);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey, // Set the background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90), // Make the button circular
                  ),
                ),
                child: Text(
                  a3,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 70,
              height:70,
              child: ElevatedButton(
                onPressed: () {
                  onpressedbtn(a4);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent, // Set the background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90), // Make the button circular
                  ),
                ),
                child: Text(
                  a4,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 70,
              height:70,
              child: ElevatedButton(
                onPressed: () {
                  onpressedbtn(a5);
                },
                child: Text(
                  a5,
                  style: TextStyle(fontSize: 24),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange, // Set the background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90), // Make the button circular
                  ),
                ),
              ),
            ),
          ),
        ),
    ],);
  }
}

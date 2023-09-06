import 'dart:math';

import 'package:calculator/rowbtn.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  static const String routename="homescreen";
  @override
  State<homescreen> createState() => _homescreenState('', '', '','');
}

class _homescreenState extends State<homescreen> {
  String saveoperator, savednumber;
  String result;
  String temp;
  _homescreenState(this.result, this.saveoperator, this.savednumber,this.temp);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Route Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(temp,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 40)),
              ),
            ),
            Expanded(
                child: rowbtn("7", "8", "9", "/",
              onpressedbtn: (p0) {
                onClick(p0);
              },
            )),
            Expanded(
              child: rowbtn("4", "5", "6", "*",
                  onpressedbtn: (p1) {
                onClick(p1);
              },
              )),
            Expanded(
              child: rowbtn("1", "2", "3", "-", onpressedbtn: (p2) {onClick(p2);})),
            Expanded(
              child: rowbtn('.', '0', '=', '+', onpressedbtn: (p3) {onClick(p3);}),
            ),
          ],
        ));
  }

  void onClick(String btn) {
    if (btn != "/" && btn != "+" && btn != "-" && btn != "*") {
      if (result.isEmpty) {
        if (btn == "=" || btn == ".") return;
      }
      if (saveoperator.isEmpty) {
        if ((result.contains('.') && btn == ".") || btn == '=') return;
        result += btn;
      } else {
        if (savednumber.isEmpty && (btn == "=" || btn == ".")) return;
        if (savednumber.contains('.') && btn == ".") return;
        if(btn!="=") {
          savednumber += btn;
        }
        if (btn == "=") {
          double x = double.parse(result);
          double y = double.parse(savednumber);
          if (saveoperator == "+") {
            x += y;
            saveoperator = '';
            savednumber = '';
            result = x.toString();
            String temp2='';
            for (int i = 0; i <result.length; i++) {
              if(result[i]=='.'){
                temp2 += result[i];
                for (int j =i+1; j <min(result.length,i+3); j++){
                  temp2 += result[j];
                }
                result=temp2;
                break;
              }
              temp2 += result[i];
            }
          }
          if (saveoperator == "-") {
            x -= y;
            saveoperator = '';
            savednumber = '';
            result = x.toString();
            String temp2='';
            for (int i = 0; i <result.length; i++) {
              if(result[i]=='.'){
                temp2 += result[i];
                for (int j =i+1; j <min(result.length,i+3); j++){
                  temp2 += result[j];
                }
                result=temp2;
                break;
              }
              temp2 += result[i];
            }
          }
          if (saveoperator == "/") {
            x /= y;
            saveoperator = '';
            savednumber = '';
            result = x.toString();
            String temp2='';
            for (int i = 0; i <result.length; i++) {
              if(result[i]=='.'){
                temp2 += result[i];
                for (int j =i+1; j <min(result.length,i+3); j++){
                  temp2 += result[j];
                }
                result=temp2;
                break;
              }
              temp2 += result[i];
            }

          }
          if (saveoperator == "*") {
            x *= y;
            saveoperator = '';
            savednumber = '';
            result = x.toString();
            String temp2='';
            for (int i = 0; i <result.length; i++) {
              if(result[i]=='.'){
                temp2 += result[i];
                for (int j =i+1; j <min(result.length,i+3); j++){
                  temp2 += result[j];
                }
                result=temp2;
                break;
              }
              temp2 += result[i];
            }

          }
        }

      }
    }
    else {
      if (result.isEmpty) return;
      if (saveoperator.isEmpty) {
        saveoperator += btn;
      }
      else {
        double x = double.parse(result);
        double y = double.parse(savednumber);
        if (saveoperator == "+") {
          x += y;
          saveoperator = btn;
          savednumber = '';
          result = x.toString();
          String temp2='';
          for (int i = 0; i <result.length; i++) {
            if(result[i]=='.'){
              temp2 += result[i];
              for (int j =i+1; j <min(result.length,i+3); j++){
                temp2 += result[j];
              }
              result=temp2;
              break;
            }
            temp2 += result[i];
          }

        }
        else if (saveoperator == "-") {
          x -= y;
          saveoperator = btn;
          savednumber = '';
          result = x.toString();
          String temp2='';
          for (int i = 0; i <result.length; i++) {
            if(result[i]=='.'){
              temp2 += result[i];
              for (int j =i+1; j <min(result.length,i+3); j++){
                temp2 += result[j];
              }
              result=temp2;
              break;
            }
            temp2 += result[i];
          }


        }
       else if (saveoperator == "/") {
          x /= y;
          saveoperator = btn;
          savednumber = '';
          result = x.toString();
          String temp2='';
          for (int i = 0; i <result.length; i++) {
            if(result[i]=='.'){
              temp2 += result[i];
              for (int j =i+1; j <min(result.length,i+3); j++){
                temp2 += result[j];
              }
              result=temp2;
              break;
            }
            temp2 += result[i];
          }

        }
       else if (saveoperator == "*") {
          x *= y;
          saveoperator = btn;
          savednumber = '';
          result = x.toString();
          String temp2='';
          for (int i = 0; i <result.length; i++) {
            if(result[i]=='.'){
              temp2 += result[i];
              for (int j =i+1; j <min(result.length,i+3); j++){
                temp2 += result[j];
              }
              result=temp2;
            break;
            }
            temp2 += result[i];
          }

        }

      }
    }
  if(savednumber!=''){
    temp=savednumber;
  }

  else{
    temp=result;
  }
  setState(() {
    temp;
  });

if(result=='0.0'){
  result='';


}
  }
}

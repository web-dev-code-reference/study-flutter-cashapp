import 'package:cashapp/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:cashapp/components/navmodal.dart';

class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Income"),
        backgroundColor: Colors.orange,
        elevation: 1.0,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.home),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
          },),
          new IconButton(
            icon: Icon(Icons.add), onPressed: (){
              showDialog(context: context,
              builder: (context)=>new AlertDialog(
                title: new Text("add"),
                content: new Container(
                  height: 170.0,
                  child: AlertComponents(),
                ),
              ));
            }
          ),
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.orange,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Balance", style: TextStyle(color: Colors.white),),
                subtitle: new Text("\$720", style: TextStyle(color: Colors.red),),
              ),
            ),
            Expanded(
              child: ListTile(
                title: new Text("Expense", style: TextStyle(color: Colors.white),),
                subtitle: new Text("\$230", style: TextStyle(color: Colors.red),),
              ),
            ),
            Expanded(
              child: new IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){},color: Colors.deepOrange,)
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:cashapp/components/navmodal.dart';

class Expense extends StatefulWidget {
  @override
  _ExpenseState createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Expense"),
        backgroundColor: Colors.orange,
        elevation: 1.0,
        actions: <Widget>[
          IconButton(
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
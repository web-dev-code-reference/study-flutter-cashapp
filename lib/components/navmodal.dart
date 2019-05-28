import 'package:flutter/material.dart';
import 'package:cashapp/pages/income.dart';
import 'package:cashapp/pages/expense.dart';
import 'package:cashapp/pages/category.dart';

class AlertComponents extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return 
    new Column(
      children: <Widget>[ 
          //add new  Category 
          new Row(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.attach_money), 
              ),
              new Padding(
                padding: EdgeInsets.all(2.0),
                child: new MaterialButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context)=>new Income() 
                      ));
                    },
                    child: new Text("Income"),
                  )
                ),
            ],
          ),
          //add new Categorys 
          new Row(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.money_off), 
              ),
              new Padding(
                padding: EdgeInsets.all(2.0),
                child: new MaterialButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context)=>new Expense() 
                      ));
                    },
                    child: new Text("Expense"),
                  )
                ),
            ],
          ),
          //add new  Category
          new Row(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.dashboard), 
              ),
              new Padding(
                padding: EdgeInsets.all(2.0),
                child: new MaterialButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context)=>new Category() 
                      ));
                    },
                    child: new Text("Category"),
                  )
                ),
            ],
          ),
          
        ],
      ); 
  }
}
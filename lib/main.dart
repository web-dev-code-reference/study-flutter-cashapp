import 'package:flutter/material.dart';
//tutorial at https://youtu.be/M81bF0FD1Cg?t=1949
main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Income Expense"),
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
                  child: new Column(
                    children: <Widget>[ 
                      //add new  income 
                      new Row(
                        children: <Widget>[
                          new Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(Icons.attach_money), 
                          ),
                          new Padding(
                            padding: EdgeInsets.all(2.0),
                            child: new MaterialButton(
                                onPressed: (){},
                                child: new Text("Income"),
                              )
                            ),
                        ],
                      ),
                      //add new expenses 
                      new Row(
                        children: <Widget>[
                          new Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(Icons.money_off), 
                          ),
                          new Padding(
                            padding: EdgeInsets.all(2.0),
                            child: new MaterialButton(
                                onPressed: (){},
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
                                onPressed: (){},
                                child: new Text("Category"),
                              )
                            ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ));
            }
          ),
        ],
      ),

      body: new Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: new Icon(Icons.account_balance_wallet, 
                size: 64.0, color: Colors.grey, ),
              subtitle: new Padding(
                padding: EdgeInsets.only(left: 130.0),
                child:  new Text("waste no money!",style: TextStyle(fontSize: 16.0),),
                ), 
            ),
          )
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




















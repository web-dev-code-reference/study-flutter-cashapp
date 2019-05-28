import 'package:flutter/material.dart';


class FooterComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    
    new Container(
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
      )
    
    
    ;
  }
}
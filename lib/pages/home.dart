import 'package:flutter/material.dart';

import 'package:cashapp/components/navmodal.dart';
import 'package:cashapp/components/footer.dart';

//tutorial https://www.youtube.com/watch?v=M81bF0FD1Cg&t=2380s


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //this code is going to give us the width of the screen
    final MediaQueryData = MediaQuery.of(context);
    final size=MediaQueryData.size.width;

    return Scaffold(
      appBar: AppBar(
        title: new Text("Cash App"),
        backgroundColor: Colors.orange,
        elevation: 1.0,
        actions: <Widget>[

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

      body: new Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: new Icon(Icons.account_balance_wallet, 
                size: 64.0, color: Colors.grey, ),
              subtitle: new Padding(
                padding: EdgeInsets.only(left: size /3.1),
                child:  new Text("waste no money!",style: TextStyle(fontSize: 16.0),),
                ), 
            ),
          )
        ],
      ),

      bottomNavigationBar: FooterComponent(),

    );
  }
}
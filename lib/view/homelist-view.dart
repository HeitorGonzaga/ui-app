import 'package:app/view/home-view.dart';
import 'package:app/widget/card-view.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeView()));
          },
        ),
        centerTitle: false,
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 100),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '測試菜單',
                    style: TextStyle(fontSize: 25, color: Colors.black45),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('闖入'),
                        onPressed: () {},
                        elevation: 0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        child: Text('闖入'),
                        onPressed: () {},
                        elevation: 0,
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            CardView('images/01.jpg',
                'Stay in a Charming Flat near Historic Centre', '家庭測試', '家庭測試'),
            CardView(
                'images/02.jpg',
                'Boho-Chic Craftsman Apartament with Viny Library',
                '家庭測試',
                '家庭測試'),
            CardView(
                'images/03.jpg', 'Sunset Cave House In Oia', '家庭測試', '家庭測試'),
          ],
        ),
      ),
    );
  }
}

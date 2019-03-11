import 'package:app/view/homelist-view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeListView()));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
          ),
          Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 10,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Card(
                    child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Text(
                          'Stay in a Charming Flat near Historic Centre',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Text(
                          '家庭測試',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '測試值',
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: IconButton(
                                  icon: Icon(Icons.favorite_border),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                )),
              ))
        ],
      ),
    );
  }
}

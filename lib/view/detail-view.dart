import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class DetailView extends StatelessWidget {
  final String imagem;
  final String titulo;

  DetailView(this.imagem, this.titulo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(this.imagem), fit: BoxFit.cover)),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 400),
                width: MediaQuery.of(context).size.width - 100,
                height: MediaQuery.of(context).size.height - 400,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.all(16),
                        width: double.infinity,
                        child: Text(
                          this.titulo,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(left: 16),
                        width: double.infinity,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a nisi dolor. Nullam eget condimentum eros. Morbi dignissim rhoncus facilisis. Etiam vehicula est quis dolor.',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          '家庭測試  家庭測試.',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset(-10, 0.6),
                        child: StarRating(
                            size: 20.0,
                            rating: 3.5,
                            color: Colors.orange,
                            borderColor: Colors.grey,
                            starCount: 5,
                            onRatingChanged: (rating) => () {}),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Text('家 998/測 '),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: RaisedButton(
                        elevation: 0,
                        child: Text(
                          '家庭測試',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black54,
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

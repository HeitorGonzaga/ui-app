import 'package:app/view/detail-view.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String _imagem;
  final String _titulo;
  final String _desc_1;
  final String _desc_2;

  CardView(this._imagem, this._titulo, this._desc_1, this._desc_2);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailView(this._imagem, this._titulo)));
      },
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 100,
              height: 120,
              child: Image.asset(
                this._imagem,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width - 180,
                    height: 70,
                    child: Text(
                      this._titulo,
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 180,
                    child: Text(
                      this._desc_1,
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 180,
                    child: Text(
                      this._desc_2,
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

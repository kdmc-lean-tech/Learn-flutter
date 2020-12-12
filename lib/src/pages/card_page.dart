import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [SizedBox(height: 30.0), _card()],
      ),
    );
  }

  Widget _card() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          FadeInImage(
              fadeInDuration: Duration(milliseconds: 200),
              height: 180,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://lacf.ca/sites/default/files/images/homepage/banners/P14%20-%20brightcropped%20for%20landing%20page_%20Bridge%20in%20Gablenz%2C%20Germany%2C%20Photo%20by%20Martin%20Damboldt%20from%20Pexels.jpg')),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Title',
                style: TextStyle(fontSize: 30, color: Colors.orange)),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
                style: TextStyle(fontSize: 18, color: Colors.black38)),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.orange,
              textColor: Colors.white,
              child: Text('See more'),
            ),
          )
        ],
      ),
    );
  }
}

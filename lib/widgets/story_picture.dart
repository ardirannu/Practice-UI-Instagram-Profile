import 'package:flutter/material.dart';

class StoryPicture extends StatelessWidget {
 const StoryPicture(
    this.title,
    this.url,
    this.colorLine,
  );

  final title;
  final url;
  final colorLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(
                    color: colorLine,
                    width: 2,
                  )
                ),
              ),
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover, //set boxfit cover
                  ),
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )
                ),
              ),
            ],
          ),
          Text(title),
        ],
        
      ),
    );
  }
}


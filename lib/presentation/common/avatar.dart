import 'package:flutter/cupertino.dart';

class Avatar extends StatelessWidget {
  ImageProvider url;
  double size;

  Avatar({Key key, this.url, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: url,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

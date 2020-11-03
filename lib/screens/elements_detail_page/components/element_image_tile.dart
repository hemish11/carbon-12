import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ElementImageTile extends StatelessWidget {
  final String url;

  const ElementImageTile({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.85,
      height: size.width * 0.85,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(20.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(-5, -5),
            color: Theme.of(context).primaryColorLight,
            blurRadius: 10,
          ),
          BoxShadow(
            offset: const Offset(5, 5),
            color: Theme.of(context).primaryColorDark,
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: SizedBox(
        child: CachedNetworkImage(
          imageUrl: url,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Center(
            child: Text(
              'No Image',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          fadeInDuration: const Duration(milliseconds: 150),
          fadeOutDuration: const Duration(milliseconds: 150),
        ),
      ),
    );
  }
}

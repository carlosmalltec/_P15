import 'package:br/config/config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget cardCapa(String image, String id){
  return Hero(
      tag: "image${id}",
      child: CircleAvatar(
        maxRadius: 47,
        backgroundImage: image != null ? CachedNetworkImageProvider(image) : Container(
          color: Config.backgroundColor,
          width: 47,
          height: 47,
        ),
        backgroundColor: Colors.transparent,
      ),
    );
}
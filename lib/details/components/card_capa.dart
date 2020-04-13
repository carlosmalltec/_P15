import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget cardCapa(String url,String id){
  return Hero(
      tag: "capa ${id}",
      child: CircleAvatar(
        maxRadius: 80,
        backgroundImage: CachedNetworkImageProvider(url),
        backgroundColor: Colors.transparent,
      ),
    );
}
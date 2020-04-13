import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget cardCapa(){
  return Hero(
      tag: "home1",
      child: CircleAvatar(
        maxRadius: 80,
        backgroundImage: CachedNetworkImageProvider('https://assets.xtechcommerce.com/uploads/images/medium/88fa3922ea1f2d58b8414c7b573e5556.jpg'),
        backgroundColor: Colors.transparent,
      ),
    );
}
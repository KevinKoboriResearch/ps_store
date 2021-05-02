import "package:flutter/material.dart";

class CardClipper extends CustomClipper<Path> {
  CardClipper({
    this.cornerSize,
    this.diagonalHeight,
  });

  final double cornerSize;
  final double diagonalHeight;

  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(0, diagonalHeight + cornerSize + 10);
    path.lineTo(0, size.height - cornerSize);
    path.quadraticBezierTo(0, size.height, cornerSize, size.height);

    path.lineTo(size.width - cornerSize, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - cornerSize);

    path.lineTo(size.width, cornerSize * 1.5);
    path.quadraticBezierTo(
        size.width, 0, size.width - cornerSize * 1.6, cornerSize - 22);

    path.lineTo(size.width - cornerSize * 2, cornerSize - 19);
    path.lineTo(cornerSize, diagonalHeight);
    path.quadraticBezierTo(
        0, diagonalHeight * 1.2, 0, diagonalHeight + cornerSize * 1.5);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

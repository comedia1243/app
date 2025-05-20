// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class CachedImageColor extends StatefulWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? baseColor;
  final Color? highlightColor;

  const CachedImageColor({
    Key? key,
    this.imageUrl,
    this.width,
    this.height,
    this.borderRadius,
    this.baseColor,
    this.highlightColor,
  }) : super(key: key);

  @override
  _CachedImageColorState createState() => _CachedImageColorState();
}

class _CachedImageColorState extends State<CachedImageColor> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 0.0),
      child: SizedBox(
        width: widget.width ?? 100.0,
        height: widget.height ?? 100.0,
        child: CachedNetworkImage(
          imageUrl: widget.imageUrl ?? '',
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: widget.baseColor ?? Colors.grey[300]!,
            highlightColor: widget.highlightColor ?? Colors.grey[100]!,
            child: Container(
              color: Colors.white,
            ),
          ),
          errorWidget: (context, url, error) =>
              Center(child: Icon(Icons.error)),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

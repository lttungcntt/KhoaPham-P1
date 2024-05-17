import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'utils.dart';

class ImageUtils {
  static Widget load(
    String url, {
    double? width,
    double? height,
    BlendMode? colorBlendMode,
    WidgetBuilder? errorBuilder,
    PlaceholderWidgetBuilder? placeholder,
    BoxFit? fit = BoxFit.cover,
    Color? color,
  }) {
    if (!URLLauncherUtils.isValidUrl(url)) {
      return Container(
        color: Colors.grey.shade400,
        child: const Center(child: Icon(Icons.error, color: Colors.white)),
      );
    }
    return CachedNetworkImage(
      color: color,
      fit: fit,
      imageUrl: url,
      width: width,
      height: height,
      colorBlendMode: colorBlendMode,
      placeholder: placeholder ??
          (context, url) => Shimmer.fromColors(
                period: 900.milliseconds,
                baseColor: Colors.grey.shade200,
                highlightColor: Colors.grey.shade100,
                child: Container(color: Colors.grey),
              ),
      errorWidget: (context, url, error) =>
          errorBuilder?.call(context) ??
          Container(
            color: Colors.grey.shade400,
            child: const Center(child: Icon(Icons.error, color: Colors.white)),
          ),
    );
  }

  static Widget loadSilent(
    String url, {
    double? width,
    double? height,
    // If the icon is larger than the container size, adding padding to the container will make the icon not centered.
    // Therefore, it is important to make sure that the iconSize property of the Icon widget is always smaller than the size of the parent container.
    // errorIconSize = parentWidth-paddingLeft-paddingRight
    double? errorIconSize = 16,
    BlendMode? colorBlendMode,
    BoxFit? fit = BoxFit.cover,
  }) {
    if (!URLLauncherUtils.isValidUrl(url)) {
      return Center(
        child: Icon(
          Icons.error,
          size: errorIconSize,
          color: Colors.white,
        ),
      );
    }
    return CachedNetworkImage(
      fit: fit,
      imageUrl: url,
      width: width,
      height: height,
      colorBlendMode: colorBlendMode,
      errorWidget: (context, url, error) => Center(
        child: Icon(
          Icons.error,
          size: errorIconSize,
          color: Colors.white,
        ),
      ),
    );
  }

  static Widget loadCircleAvatar(
    String url, {
    required double radius,
    double? width,
    double? height,
    double strokeWidth = 0,
    PlaceholderWidgetBuilder? placeholder,
    BlendMode? colorBlendMode,
    BoxFit? fit = BoxFit.cover,
    Color? backgroundColor = Colors.white,
    LoadingErrorWidgetBuilder? error,
  }) {
    Widget avatar({ImageProvider? provider, Widget? child}) {
      return CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius - strokeWidth),
          child: CircleAvatar(
            radius: radius - strokeWidth,
            backgroundColor: backgroundColor,
            backgroundImage: provider,
            child: child,
          ),
        ),
      );
    }

    Widget defaultPlaceholder() => avatar(
        child: Shimmer.fromColors(
            period: 900.milliseconds,
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade100,
            child: Container(color: Colors.grey)));

    if (!URLLauncherUtils.isValidUrl(url)) {
      final file = File(url);
      if (file.existsSync()) {
        return avatar(provider: Image.file(file).image);
      }
      return defaultPlaceholder();
    }
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      placeholder: placeholder ?? (context, url) => defaultPlaceholder(),
      errorWidget: (context, url, error) =>
          (error is Widget) ? error : defaultPlaceholder(),
      imageBuilder: (context, provider) => avatar(provider: provider),
    );
  }
}

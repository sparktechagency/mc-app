/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/about.svg
  SvgGenImage get about => const SvgGenImage('assets/icons/about.svg');

  /// File path: assets/icons/home_icon.svg
  SvgGenImage get homeIcon => const SvgGenImage('assets/icons/home_icon.svg');

  /// File path: assets/icons/home_unselect.svg
  SvgGenImage get homeUnselect =>
      const SvgGenImage('assets/icons/home_unselect.svg');

  /// File path: assets/icons/lock.svg
  SvgGenImage get lock => const SvgGenImage('assets/icons/lock.svg');

  /// File path: assets/icons/log_out.svg
  SvgGenImage get logOut => const SvgGenImage('assets/icons/log_out.svg');

  /// File path: assets/icons/man.svg
  SvgGenImage get man => const SvgGenImage('assets/icons/man.svg');

  /// File path: assets/icons/message_icon.svg
  SvgGenImage get messageIcon =>
      const SvgGenImage('assets/icons/message_icon.svg');

  /// File path: assets/icons/order_select.svg
  SvgGenImage get orderSelect =>
      const SvgGenImage('assets/icons/order_select.svg');

  /// File path: assets/icons/order_unselect.svg
  SvgGenImage get orderUnselect =>
      const SvgGenImage('assets/icons/order_unselect.svg');

  /// File path: assets/icons/place.svg
  SvgGenImage get place => const SvgGenImage('assets/icons/place.svg');

  /// File path: assets/icons/privacy.svg
  SvgGenImage get privacy => const SvgGenImage('assets/icons/privacy.svg');

  /// File path: assets/icons/profile_select.svg
  SvgGenImage get profileSelect =>
      const SvgGenImage('assets/icons/profile_select.svg');

  /// File path: assets/icons/profile_unselect.svg
  SvgGenImage get profileUnselect =>
      const SvgGenImage('assets/icons/profile_unselect.svg');

  /// File path: assets/icons/scheduleUnselect.svg
  SvgGenImage get scheduleUnselect =>
      const SvgGenImage('assets/icons/scheduleUnselect.svg');

  /// File path: assets/icons/schedule_select.svg
  SvgGenImage get scheduleSelect =>
      const SvgGenImage('assets/icons/schedule_select.svg');

  /// File path: assets/icons/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/icons/setting.svg');

  /// File path: assets/icons/termsIcons.svg
  SvgGenImage get termsIcons =>
      const SvgGenImage('assets/icons/termsIcons.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        about,
        homeIcon,
        homeUnselect,
        lock,
        logOut,
        man,
        messageIcon,
        orderSelect,
        orderUnselect,
        place,
        privacy,
        profileSelect,
        profileUnselect,
        scheduleUnselect,
        scheduleSelect,
        setting,
        termsIcons
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/Splash.png');

  /// File path: assets/images/homeScreenBg.png
  AssetGenImage get homeScreenBg =>
      const AssetGenImage('assets/images/homeScreenBg.png');

  /// File path: assets/images/profileBg.png
  AssetGenImage get profileBg =>
      const AssetGenImage('assets/images/profileBg.png');

  /// File path: assets/images/splash_loading.png
  AssetGenImage get splashLoading =>
      const AssetGenImage('assets/images/splash_loading.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [splash, homeScreenBg, profileBg, splashLoading];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

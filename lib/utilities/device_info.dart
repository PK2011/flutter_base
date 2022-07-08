import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

bool get isWeb => kIsWeb;

bool get isMobile =>
    !isWeb &&
    (Platform.isIOS || Platform.isAndroid) &&
    MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .shortestSide <
        600;

bool get isDesktop =>
    !isWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);

bool get isApple => !isWeb && (Platform.isIOS || Platform.isMacOS);

bool get isGoogle => !isWeb && (Platform.isAndroid || Platform.isFuchsia);

bool get isAndroid => !isWeb && Platform.isAndroid;

bool get isIos => !isWeb && Platform.isIOS;

bool get isMacOS => !isWeb && Platform.isMacOS;

bool get isLinux => !isWeb && Platform.isLinux;

bool get isWindows => !isWeb && Platform.isWindows;

String get operatingSystemName => Platform.operatingSystem;

String get operatingSystemVersion => Platform.operatingSystemVersion;

bool get isTablet =>
    MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .size
        .shortestSide >
    600;

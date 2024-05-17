import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

typedef URLError = void Function(dynamic);

class URLLauncherUtils {
  static openUrl(
    String url, {
    URLError? onError,
    LaunchMode launchMode = LaunchMode.platformDefault,
  }) async {
    if (url.startsWith('http://')) {
      launchMode = LaunchMode.externalApplication;
    }
    return await _launch(Uri.parse(url), 'Could not launch $url',
        onError: onError ?? (err) {}, mode: launchMode);
  }

  static bool isValidUrl(String url) {
    try {
      return Uri.parse(url).host.isNotEmpty;
    } catch (exception) {
      return false;
    }
  }

  static openPhoneCall(String phone, {URLError? onError}) async {
    return await _launch(
      Uri.parse('tel:$phone'),
      'Could not launch $phone',
      onError: onError,
    );
  }

  static openEmail(String email, {URLError? onError}) async {
    return await _launch(Uri.parse('mailto:$email'), 'Could not launch $email',
        onError: onError);
  }

  static Future<void> openMap(double latitude, double longitude,
      {URLError? onError, String links = ''}) async {
    if (links.startsWith('https')) {
      return openUrl(links, onError: onError);
    }

    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    return await _launch(Uri.parse(googleUrl), 'Could not launch $googleUrl',
        onError: onError);
  }

  static Future<void> openCalendar({URLError? onError}) async {
    String link = '';
    if (Platform.isAndroid) {
      link = 'content://com.android.calendar/time/';
    } else if (Platform.isIOS) {
      link = 'calshow://';
    }
    return await _launch(
      Uri.parse(link),
      'Could not launch $link',
      onError: onError,
    );
  }

  static _launch(
    Uri uri,
    String errorMessage, {
    URLError? onError,
    LaunchMode mode = LaunchMode.platformDefault,
  }) async {
    try {
      await launchUrl(uri, mode: mode);
    } catch (e) {
      if (onError != null) {
        onError.call(e);
        return;
      }
      rethrow;
    }
  }
}

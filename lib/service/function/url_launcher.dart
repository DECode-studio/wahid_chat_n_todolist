import 'package:url_launcher/url_launcher.dart';

void launchUri(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}

void urlLauncher(String url) {
  launch(
    url,
  );
}

void uriLauncher(Uri uri) async {
  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $uri';
  }
}

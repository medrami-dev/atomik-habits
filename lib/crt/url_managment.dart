// ignore_for_file: unused_element

import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse('https://instagram.com/med.rami.dev/');
Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

import 'package:url_launcher/url_launcher.dart';

import '../widgets/custom_snackbar.dart';

Future<void> launcherBooksUrl(
    {required context, required String? bookUrl}) async {
  if (bookUrl != null) {
    final Uri url = Uri.parse(bookUrl);
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      customSnackBarWidget(
          context: context, bookUrl: bookUrl, text: 'Could not launch');
    }
  }
}

part of 'imports_illustrations.dart';

class IllustrationNoConnectionScreen extends StatelessWidget {
  final VoidCallback? onRedirect;

  const IllustrationNoConnectionScreen({
    Key? key,
    this.onRedirect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "No connection",
      body: "please Check Your Connection",
      imageUrl: Assets.noConnection,
      showRedirectIcon: false,
      onRedirect: onRedirect ??
          () {
            NavigatorService().back();
          },
    );
  }
}

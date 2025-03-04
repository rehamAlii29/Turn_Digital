part of 'imports_illustrations.dart';

class IllustrationUnKnownErrorScreen extends StatelessWidget {
  final VoidCallback? onRedirect;

  const IllustrationUnKnownErrorScreen({Key? key, this.onRedirect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "illustration_unknown",
      body: "illustration_unknown_details",
      imageUrl: Assets.unKnownError,
      onRedirect: onRedirect ??
          () {
            NavigatorService().back();
          },
    );
  }
}

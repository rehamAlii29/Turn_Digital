part of 'auth_pages_imports.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppColors.get.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.authBG,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: AppInsets.defaultScreenALL,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  12.ESH(),
                  const HeaderLogin(),
                  21.ESH(),
                  const FormLogin(),
                  24.ESH(),
                  const SectionSocialLogin(),
                  20.ESH(),
                  AuthFooter.signIn(() {
                    NavigatorService().to(registerPageKey);
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

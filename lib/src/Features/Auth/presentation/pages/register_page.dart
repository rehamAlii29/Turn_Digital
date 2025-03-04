part of 'auth_pages_imports.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    var node = FocusScope.of(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              Assets.authBG,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: AppInsets.defaultScreenALL,
          child: ListView(
            children: [
              const FormRegister(),
              24.ESH(),
              const SectionSocialLogin(),
              20.ESH(),
              AuthFooter.signUp(() {
                NavigatorService().to(loginPageKey);
              })
            ],
          ),
        ),
      ),
    );
  }
}

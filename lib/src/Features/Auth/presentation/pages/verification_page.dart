part of 'auth_pages_imports.dart';

class VerificationPage extends StatelessWidget {
  final String? mail;

  VerificationPage({super.key, required this.mail});

  @override
  Widget build(BuildContext context) {
    Get.put(VerificationCodeController());
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
          child: GetBuilder<VerificationCodeController>(
            builder: (_) {
              return Form(
                key: _.globalKey,
                child: Padding(
                  padding: AppInsets.defaultScreenALL,
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconBack(),
                          12.ESH(),
                          const CustomText(
                            "Verification",
                            fontSize: 24,
                            fontWeight: FW.medium,
                          ),
                          12.ESH(),
                          CustomText(
                            " We’ve send you the verification code on  $mail",
                            fontSize: 15,
                          ),
                          27.0.ESH(),
                          PinCodeServices.pinCodeWidget(
                              fieldCounts: 4,
                              context: context,
                              textEditingController: _.textEditingController!,
                              errorController: _.errorController!),
                          40.ESH(),
                          Center(
                            child: ButtonDefault.image(
                              color: AppColors.get.white,
                              height: 58,
                              image: const AssetImage(Assets.arrow),
                              label: "Continue",
                              onPressed: () {
                                _.submit();
                              },
                            ),
                          ),
                          24.8.ESH(),
                          CardResendTimer(
                            timer: _.timerCount.toString(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

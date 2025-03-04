import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Auth/presentation/widgets/form_login.dart';
import 'package:flutter_base/src/Features/Auth/presentation/widgets/icon_back.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import '../../../../Core/Constants/Decorations/app_Insets.dart';

import '../../../../Core/Constants/Navigation/navigation_const.dart';
import '../../../../Core/Services/pin_code.dart';
import '../../../../Core/Styles/Colors/app_colors.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/custom_rounded_button.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import '../manger/login_controller.dart';
import '../manger/register_controller.dart';
import '../manger/verfication_controller.dart';
import 'package:get/get.dart';

import '../widgets/auth_footer.dart';
import '../widgets/card_resned_timer.dart';
import '../widgets/form_register.dart';
import '../widgets/header_login.dart';
import '../widgets/section_remeber_me.dart';
import '../widgets/section_social_login.dart';

part 'login_page.dart';

part 'register_page.dart';

part 'verification_page.dart';

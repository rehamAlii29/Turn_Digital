import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Constants/decorations/app_Insets.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/OnBoarding/presentation/manager/onboarding_controller.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/custom_outlined_button.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/custom_rounded_button.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Spaces&Dividers/spaces.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/models/onboarding_model.dart';
import 'on_boarding_footer.dart';

part 'on_boarding_content_item.dart';

part 'onboarding_indicator.dart';

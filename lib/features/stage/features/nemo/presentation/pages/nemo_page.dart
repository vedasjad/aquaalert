import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/stage/presentation/widgets/notification_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

class NemoPage extends StatelessWidget {
  const NemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> keywords = [
      'water leak',
      'pipe burst',
      'leak detection',
      'emergency contact',
      'repair',
      'prevent leaks',
      'water damage',
      'maintenance tips',
      'how to fix a leak',
      'thank you',
      'thanks',
      'thanks a lot',
      'hello',
      'hi',
      'goodbye',
      'bye',
      'appreciate',
      'you\'re welcome'
    ];

    final List<String> responses = [
      'If you suspect a water leak, it\'s important to act quickly to minimize damage. Turn off your main water supply and contact a professional plumber for an inspection.',
      'A pipe burst can cause significant damage. Turn off the main water supply and contact a plumber immediately to prevent further issues.',
      'To detect leaks, look for signs such as damp spots on walls or ceilings, unusual water bills, or a decrease in water pressure. A professional can use specialized equipment for accurate detection.',
      'In case of a water emergency, contact our 24/7 support line at +233550138086 for immediate assistance.',
      'If you need repair services, please provide details about the issue and contact a qualified plumber for a thorough inspection and repair.',
      'To prevent water leaks, regularly inspect pipes for wear and tear, ensure proper insulation, and promptly address any small leaks or drips.',
      'Water damage can be serious. If you notice significant damage, contact a water damage restoration specialist to assess and address the problem.',
      'For regular maintenance, check for any signs of leaks, ensure proper pipe insulation, and consider scheduling annual inspections with a professional.',
      'If you have a minor leak, you might be able to fix it temporarily with tape or a sealant. However, for a lasting solution, contact a plumber for a proper repair.',
      'You\'re welcome! If you have any more questions or need further assistance, feel free to ask.',
      'Thanks for reaching out! If you need help with anything else, just let me know.',
      'You\'re welcome! I\'m here to help you with any water leakage concerns you might have.',
      'Hello! How can I assist you with your water leakage management today?',
      'Hi there! If you have any questions or need help, just let me know.',
      'Goodbye! If you need assistance in the future, don\'t hesitate to contact us.',
      'Bye! Have a great day, and remember, we\'re here to help with any water leakage issues.',
      'I appreciate your patience. If you have any other questions or need further assistance, feel free to ask.',
      'You\'re welcome! If you have any more queries or need help, just let me know.'
    ];

    final chatBotConfig = IkChatBotConfig(
      //SMTP Rating to your mail Settings
      ratingIconYes: const Icon(Icons.star),
      ratingIconNo: const Icon(Icons.star_border),
      ratingIconColor: Colors.black,
      ratingBackgroundColor: Colors.white,
      ratingButtonText: 'Submit Rating',
      thankyouText: 'Thanks for your rating!',
      ratingText: 'Rate your experience:',
      ratingTitle: 'Thank you for using the Hydra AI!',
      body: 'This is a test email sent from Flutter and Dart.',
      subject: 'Test Rating',
      recipient: 'recipient@example.com',
      isSecure: false,
      senderName: 'Asjad',
      smtpUsername: 'vedasjad',
      smtpPassword: 'your password',
      smtpServer: 'stmp.gmail.com',
      smtpPort: 587,
      //Settings to your system Configurations
      sendIcon: const Icon(
        Icons.send,
        color: Colors.black,
      ),
      userIcon: const Icon(
        Icons.animation,
        color: AppColors.blackMatte,
      ),
      botIcon: const Icon(
        Icons.android,
        color: AppColors.blue,
      ),
      botChatColor: AppColors.blue,
      delayBot: 100,
      closingTime: 1,
      delayResponse: 1,
      userChatColor: AppColors.black,
      waitingTime: 1,
      keywords: keywords,
      responses: responses,
      backgroundColor: AppColors.white,
      backgroundImage:
          'https://i.pinimg.com/736x/d2/bf/d3/d2bfd3ea45910c01255ae022181148c4.jpg',
      backgroundAssetimage: AppImages.white,
      initialGreeting:
          "Hello! \nWelcome to Hydra.\nHow can I assist you today?",
      defaultResponse: "Sorry, I didn't understand your response.",
      inactivityMessage: "Is there anything else you need help with?",
      closingMessage: "This conversation will now close.",
      inputHint: 'Send a message',
      waitingText: 'Please wait...',
      useAsset: false,
    );

    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        title: Text(
          "Meet Hydra AI!",
          style: AppTextStyles.largeBold.copyWith(
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.white,
        actions: [
          IconWidget(
            iconPath: AppIcons.bell,
            onTap: () {},
          ),
        ],
      ),
      body: ikchatbot(config: chatBotConfig),
      // body: SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       PeriodicUsageWidget(
      //         controller: controller,
      //         points: const [
      //           Point(1, 250),
      //           Point(2, 130),
      //           Point(3, 290),
      //           Point(4, 45),
      //           Point(5, 175),
      //           Point(6, 210),
      //           Point(7, 85),
      //           Point(8, 220),
      //           Point(9, 60),
      //           Point(10, 140),
      //           Point(11, 300),
      //           Point(12, 15),
      //           Point(13, 260),
      //           Point(14, 100),
      //           Point(15, 190),
      //           Point(16, 270),
      //           Point(17, 30),
      //           Point(18, 240),
      //           Point(19, 90),
      //           Point(20, 280),
      //           Point(21, 50),
      //           Point(22, 160),
      //           Point(23, 230),
      //           Point(24, 70),
      //           Point(25, 200),
      //           Point(26, 110),
      //           Point(27, 170),
      //           Point(28, 250),
      //           Point(29, 40),
      //           Point(30, 135),
      //           Point(31, 285),
      //         ],
      //       ),
      //       Padding(
      //         padding: EdgeInsets.symmetric(
      //           horizontal: AppSizes.w30,
      //         ),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: [
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   AppStrings.monthlyProgress,
      //                   style: AppTextStyles.extraLargeRegular,
      //                 ),
      //                 SizedBox(
      //                   height: AppSizes.h4,
      //                 ),
      //                 SizedBox(
      //                   width: AppSizes.getScreenWidth() * 0.75,
      //                   child: Text(
      //                     AppStrings.monthlyProgressStatement(11),
      //                     style: AppTextStyles.normalRegular,
      //                     maxLines: 2,
      //                   ),
      //                 ),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     const MonthlyUsageLinearIndicator(
      //                       ltrsPerDay: '226',
      //                     ),
      //                     SizedBox(
      //                       width: AppSizes.w46,
      //                     ),
      //                     Container(
      //                       padding: EdgeInsets.symmetric(
      //                         horizontal: AppSizes.w10,
      //                         vertical: AppSizes.w4,
      //                       ),
      //                       decoration: BoxDecoration(
      //                         color: AppColors.black,
      //                         borderRadius: BorderRadius.circular(
      //                           AppSizes.r4,
      //                         ),
      //                       ),
      //                       child: Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           const Icon(
      //                             Icons.arrow_drop_down,
      //                             color: AppColors.greenAccent,
      //                           ),
      //                           Text(
      //                             '11%',
      //                             style: AppTextStyles.normalRegular.copyWith(
      //                               color: AppColors.white2,
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //                 SizedBox(
      //                   height: AppSizes.w4,
      //                 ),
      //                 const MonthlyUsageLinearIndicator(
      //                   ltrsPerDay: '251',
      //                   isPrevMonth: true,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(top: AppSizes.w8),
      //                   padding: EdgeInsets.all(
      //                     AppSizes.w8,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: AppColors.gunMetal,
      //                     borderRadius: BorderRadius.circular(
      //                       AppSizes.r6,
      //                     ),
      //                   ),
      //                   child: Row(
      //                     children: [
      //                       Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             AppStrings.goalStreak,
      //                             style: AppTextStyles.normalRegular.copyWith(
      //                               color: AppColors.white2,
      //                             ),
      //                           ),
      //                           Text(
      //                             AppStrings.daysInARow(10),
      //                             style:
      //                                 AppTextStyles.extraLargeMedium.copyWith(
      //                               color: AppColors.white2,
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Row(
      //                         children: List.generate(19, (index) {
      //                           return Container(
      //                             height: AppSizes.w12,
      //                             width: AppSizes.w3,
      //                             margin: EdgeInsets.symmetric(
      //                               horizontal: AppSizes.w2,
      //                             ),
      //                             decoration: BoxDecoration(
      //                               color: index % 8 == 0
      //                                   ? Colors.transparent
      //                                   : index < 7
      //                                       ? AppColors.white2
      //                                       : AppColors.lightSeaGreen,
      //                               borderRadius: BorderRadius.circular(
      //                                 AppSizes.r2,
      //                               ),
      //                             ),
      //                           );
      //                         }),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

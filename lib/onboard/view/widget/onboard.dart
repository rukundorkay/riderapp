// import 'package:flutter/material.dart';

// /// A page widget for the SplashScreen.
// class SplashScreenPage {
//   /// Initializes a new [SplashScreenPage]
//   const SplashScreenPage({
//     required this.imagePath,
//     required this.title,
//     required this.body,
//     required this.index,
//     required this.totalPages,
//     // required this.onNext,
//     super.key,
//   });

//   /// Path of the image that should be displayed,
//   final String imagePath;

//   /// The title text.
//   final String title;

//   /// The body text.
//   final String body;

//   /// The index of this [SplashScreenPage].
//   final int index;

//   /// Total number of pages.
//   final int totalPages;

//   /// Called when the user pressed the `Next` button.
//   // final void Function(int) onNext;

//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(AppStyles.spaceDefault),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             // flex: 2,
//             child: Container(
//               height: AppStyles.spaceEnormous * scale,
//               width: AppStyles.spaceEnormous * scale,
//               child: MySvgPicture(
//                 imagePath,
//                 height: 400,
//               ),
//               // decoration: BoxDecoration(
//               //   image: DecorationImage(
//               //     scale: imageScale,
//               //     image: AssetImage(imagePath),
//               //     fit: BoxFit.scaleDown,
//               //   ),
//               //   borderRadius: BorderRadius.circular(AppStyles.radius),
//               // ),
//             ),
//           ),
//           Expanded(
//             // flex: 2,
//             child: Padding(
//               padding: EdgeInsets.only(
//                 bottom: AppStyles.spaceDefault * scale,
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                     title,
//                     // style: Theme.of(context).textTheme.headline1!.copyWith(
//                     //       fontSize: AppStyles.spaceMedium * scale,
//                     //       fontWeight: FontWeight.w900,
//                     //       color: context.colors.primary,
//                     //     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(
//                       top: AppStyles.spaceDefault * scale,
//                       right: AppStyles.spaceDefault * scale,
//                       left: AppStyles.spaceDefault * scale,
//                     ),
//                     child: Text(
//                       body,
//                       style: TextStyle(
//                         fontSize: AppStyles.spaceDefault * scale,
//                         height: 1.5 * scale,
//                         color: context.colors.paleBlue,
//                         wordSpacing: 3,
//                       ),
//                     ),
//                   ),
//                   const SpacingHeight(height: AppStyles.spaceHuge),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(
//                       totalPages,
//                       (i) => PageIndicator(isSelected: index == i),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               bottom: AppStyles.spaceHuge * scale,
//               right: AppStyles.spaceMedium * scale,
//               left: AppStyles.spaceMedium * scale,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Skip',
//                     // style: Theme.of(context).textTheme.button,
//                   ),
//                 ),
//                 SizedBox(
//                   width: AppStyles.spaceHuge * 4 * scale,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       elevation: 0,
//                       backgroundColor: context.colors.primary,
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push<void>(
//                         MaterialPageRoute(
//                           builder: (context) => LoginScreen(),
//                         ),
//                       );
//                     },
//                     // onPressed: () => onNext(index),
//                     child: index != totalPages - 1
//                         ? const Text(
//                             'Next',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                             ),
//                           )
//                         : const Text(
//                             'Get Started',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notify/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notify/pages/message/controllers.dart';

class MessagePage extends GetView<MessageController> {
  const MessagePage({Key? key}) : super(key: key);

  Widget _headBar() {
    return Center(
      child: Container(
        width: 320.w,
        height: 44.h,
        margin: EdgeInsets.only(bottom: 20.h, top: 20.h),
        child: Row(
          children: [
            Stack(
              children: [
                GestureDetector(
                  child: Container(
                    width: 44.w,
                    height: 44.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        )
                      ],
                      color: AppColors.primarySecondaryBackground,
                      borderRadius: BorderRadius.all(
                        Radius.circular(22.h),
                      ),
                    ),
                    // child: controller.state.head_details.value.avatar == null
                    //     ? Image(image: AssetImage("assets/images/account_header.png")):Text("hii"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  title: _headBar(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

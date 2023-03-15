 import 'package:notify/pages/message/controllers.dart';
import 'package:get/get.dart';

class MessageBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MessageController>(() => MessageController());
  }

}
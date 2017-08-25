import 'message.dart';

class Chat {
  String name;
  List<Message> messages = <Message>[];

  Chat(this.name, this.messages);
}
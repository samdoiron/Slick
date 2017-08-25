import 'package:angular2/angular2.dart';

import '../../chat.dart';
import '../../message.dart';

@Component(
  selector: 'sl-chat',
  templateUrl: "chat_component.html",
  styleUrls: const ["chat_component.css"],
  directives: const [
    CORE_DIRECTIVES
  ]
)
class ChatComponent {
  Chat _chat;

  Chat get chat => _chat;

  @Input()
  void set chat(value) {
    _chat = value;
  }

  List<Message> get messages => chat?.messages ?? [];
}
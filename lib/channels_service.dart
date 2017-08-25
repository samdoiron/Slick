import 'dart:async';
import 'package:angular2/di.dart';
import 'channel.dart';
import 'chat.dart';
import 'message.dart';

@Injectable()
class ChannelsService {
  final mockChannels = <Channel>[
    new Channel("random", new Chat("random", <Message>[
      new Message("Sam Doiron", "Hey guys (holds up spork)")
    ])),
    new Channel("general", new Chat("general", [
      new Message("Einstein", "I think therefore... wait, that's not me")
    ])),
    new Channel("mechanical-keyboards", new Chat("mechanical-keyboards", <Message>[
      new Message("Caitlin", "Oh I know")
    ]))
  ];
  int _currentID = 0;

  Future<List<Channel>> getChannels() async => mockChannels;
}
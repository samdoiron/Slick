import 'dart:async';

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';
import '../channels/channels_component.dart';
import '../../channel.dart';
import '../../chat.dart';

@Component(
    selector: 'sl-sidebar',
    styleUrls: const ['sidebar_component.css'],
    templateUrl: 'sidebar_component.html',
    directives: const [CORE_DIRECTIVES, materialDirectives, ChannelsComponent],
    providers: const [materialProviders])
class SidebarComponent {
  final _selectedChannelChange = new StreamController<Channel>();

  @Output()
  Stream<Channel> get selectedChannelChange => _selectedChannelChange.stream;

  void channelSelected(Channel channel) {
    _selectedChannelChange.add(channel);
  }
}

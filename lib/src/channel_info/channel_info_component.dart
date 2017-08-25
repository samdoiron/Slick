import 'package:angular2/angular2.dart';
import '../../channel.dart';

@Component(
  selector: 'sl-channel-info',
  templateUrl: 'channel_info_component.html',
  styleUrls: const ['channel_info_component.css'],
  directives: const [
    CORE_DIRECTIVES
  ]
)
class ChannelInfoComponent {
  Channel _channel;

  @Input()
  void set channel(Channel value) {
    _channel = value;
  }

  String get channelName => _channel?.name ?? "No channel selected";
}
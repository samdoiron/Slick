// Copyright (c) 2017, samueldoiron. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';

import '../../channel.dart';
import '../../channels_service.dart';

@Component(
  selector: 'sl-channels',
  styleUrls: const ['channels_component.css'],
  templateUrl: 'channels_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  providers: const [ChannelsService],
)
class ChannelsComponent implements OnInit {
  final ChannelsService channelsService;
  List<Channel> channels = [];
  String _selectedChannel = "";
  final _selectedChannelChange = new StreamController<String>();

  ChannelsComponent(this.channelsService);

  @Input()
  void set selectedChannel(String value) {
    _selectedChannel = value;
    _selectedChannelChange.add(value);
  }

  String get selectedChannel => _selectedChannel;

  @Output()
  Stream<String> get selectedChannelChange =>_selectedChannelChange.stream;

  @override
  Future<Null> ngOnInit() async {
    channels = await channelsService.getChannels();
  }

  selectChannel(String channel) {
    if (channel != selectedChannel) {
      selectedChannel = channel;
    }
  }

  bool isSelected(String channel) {
    return channel == _selectedChannel;
  }
}

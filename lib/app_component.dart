// Copyright (c) 2017, samueldoiron. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';

import 'src/sidebar/sidebar_component.dart';
import 'src/chat/chat_component.dart';
import 'src/channel_info/channel_info_component.dart';

import 'channel.dart';
import 'chat.dart';

@Component(
  selector: 'slick-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
    SidebarComponent,
    ChatComponent,
    ChannelInfoComponent
  ],
  providers: const [materialProviders],
)
class AppComponent {
  Channel _channel;

  get channel => _channel;
  void set channel(Channel value) {
    _channel = value;
  }

  Chat get chat => channel?.chat;
}

import 'package:socket_io_client/socket_io_client.dart' as IO;

List messageList = [];

class SocketServices {
  IO.Socket? socket;

  initSocket() {
    socket = IO.io('http://pos.wiztecbd.online/api/incomes', <String, dynamic>{
      'autoConnect': false,
      'transports': ['websocket'],
    });
    socket!.connect();
    socket!.onConnect((_) {
      if (socket!.connected) {
        socket!
            .on('getMessageEvent', (newMessage) => messageList.add(newMessage));
      }
    });
    socket!.onDisconnect((_) => print('Connection Disconnection'));
    socket!.onConnectError((err) => print('onConnectError'));
    socket!.onError((err) => print('onError'));
  }

  sendMessage(dynamic map) {
    if (map.isEmpty) return;
    socket!.emit('sendNewMessage', map);
  }
}

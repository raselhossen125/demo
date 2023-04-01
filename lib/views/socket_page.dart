import 'package:demo/services/socket_service.dart';
import 'package:flutter/material.dart';

class SocketPage extends StatefulWidget {
  const SocketPage({super.key});

  @override
  State<SocketPage> createState() => _SocketPageState();
}

class _SocketPageState extends State<SocketPage> {
  SocketServices services = SocketServices();

  @override
  initState() {
    services.initSocket('url');
    super.initState();
  }

  @override
  void dispose() {
    services.socket!.disconnect();
    services.socket!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Socket'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

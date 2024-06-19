import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  IO.Socket socket = IO.io('http://localhost:3000', <String, dynamic>{
    'transports': ['websocket'],
  });

  socket.on('connect', (_) {
    print('Conectado ao servidor Socket.IO');
  });

  socket.on('message', (data) {
    print('Mensagem recebida do servidor: $data');
  });

  socket.emit('chat message', 'Mensagem do cliente Dart para o servidor');

  // Fechar a conexão quando terminar, se necessário
  // socket.close();
}

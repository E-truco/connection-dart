const io = require('socket.io')(3000);

io.on('connection', (socket) => {
  console.log('Cliente conectado');

  socket.on('chat message', (msg) => {
    console.log('Recebido do cliente:', msg);
  });

  // Optionally, you can send a message back to the client
  socket.emit('message', 'Mensagem do servidor para o cliente Dart');
});

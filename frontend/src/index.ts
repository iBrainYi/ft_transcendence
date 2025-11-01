import * as http from 'http';

const server = http.createServer((_req: http.IncomingMessage, res: http.ServerResponse) => {
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end(`<h1>Hello from ft_transcendence 🎮</h1>`);
});

server.listen(3000, () => {
  console.log('Frontend running on http://localhost:3000');
});


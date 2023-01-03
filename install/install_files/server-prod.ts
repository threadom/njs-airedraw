import express from 'express';
import routes from './routes';

const app = express();
app.use('/', routes);
app.listen(80, () => {
  console.log('Server listening on port 80');
});

const express = require('express');
const cors = require('cors');
const app = express();

app.use(cors());

app.get('/waterpurity', (req, res) => {
  const purity = Math.floor(Math.random() * 101); // Generate random purity value between 0 and 100
  res.json({ purity });
});

app.listen(3000, () => {
  console.log('Backend server is running on port 3000');
});

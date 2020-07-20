"use strict";

const express = require("express");

// Constants
const PORT = 3000;
const HOST = "0.0.0.0";

const app = express();

app.use((req, res, next) => {
  require("./../app/router")(req, res, next);
});

app.listen(PORT, HOST, (err) => {
  if (err) throw err;
  console.log(`> Ready on http://localhost:${PORT}`);
});

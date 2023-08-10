const express = require("express");
const app = express();
const cors = require("cors");
const path = require("path");
const fs = require("fs");
const db = require("./app/models");
require("dotenv").config();


db.sequelize
  .sync()
  .then(() => {
    console.log("DB Connect");
  })
  .catch((err) => {
    console.log(err.message);
  });

app.use(cors());

app.use(express.json());

app.use(express.urlencoded({ extended: false }));

const v1RoutesPath = path.join(__dirname, "app", "routes", "v1");
fs.readdirSync(v1RoutesPath).forEach((file) => {
  const route = path.join(v1RoutesPath, file);
  require(route)(app);
});

const PORT = process.env.PORT;
app.listen(PORT, () => {
  console.log("API Connect");
});

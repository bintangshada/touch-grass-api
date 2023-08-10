const db = require("../models/index");
const Activity = db.activity;
const axios = require("axios");
require("dotenv").config();

exports.randomActivity = async (req, res) => {
  try {
    const city = req.body.city;
    const weatherResponse = await axios.get(`https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${process.env.OPENWEATHER_API_KEY}`);
    const weather = weatherResponse.data.weather[0].main;

    const activities = await Activity.findAll({
      where: { weather: weather },
      attributes: {
        exclude: ["id","createdAt","updatedAt"],
      }
    });

    if (activities.length === 0) {
      return res.status(404).send({
        message: "No data available",
        status: 404,
      });
    }

    const randomIndex = Math.floor(Math.random() * activities.length);
    const randomData = activities[randomIndex];

    return res.status(200).send({
      message: randomData,
      status: 200,
    });
  } catch (err) {
    console.error(err);
    return res.status(500).send({
      message: err.message,
    });
  }
};

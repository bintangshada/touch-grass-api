const db = require("../models/index");
const Activity = db.activity;
const axios = require("axios");
require("dotenv").config();

exports.randomActivity = async (req, res) => {
  try {
    const city = req.params.city;
    const weatherResponse = await axios.get(
      `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${process.env.OPENWEATHER_API_KEY}`
    );
    const weather = weatherResponse.data.weather[0].main;
    const weatherDesc = weatherResponse.data.weather[0].description;
    const temperatureKelvin = weatherResponse.data.main.temp;

    const temperature = (temperatureKelvin - 273.15).toFixed(0) + "°C";

    const activities = await Activity.findAll({
      where: { weather: weather },
      attributes: {
        exclude: ["id", "createdAt", "updatedAt"],
      },
    });

    if (
      [
        "Thunderstorm",
        "Squall",
        "Haze",
        "Dust",
        "Fog",
        "Sand",
        "Ash",
        "Tornado",
      ].includes(weather)
    ) {
      return res.status(200).send({
        message: "I think stay at home is not that bad",
        status: 200,
      });
    }

    if (
      [
        "ragged shower rain",
        "sleet",
        "heavy snow",
        "heavy intensity shower rain",
        "freezing rain",
        "extreme rain",
        "very heavy rain",
      ].includes(weatherDesc)
    ) {
      return res.status(200).send({
        message: "It's up to you now, the weather isn't that good, right?",
        status: 200,
      });
    }


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
      temperature: temperature,
    });
  } catch (err) {
    console.error(err);
    return res.status(500).send({
      message: err.message,
    });
  }
};


exports.defaultResponse = async (req,res) => {
  try {
    const ipAddress = await axios.get(
      `https://ipapi.co/json/`
    );

    const city = ipAddress.data.city;

    const weatherResponse = await axios.get(
      `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${process.env.OPENWEATHER_API_KEY}`
    );
    const weather = weatherResponse.data.weather[0].main;
    const weatherDesc = weatherResponse.data.weather[0].description;
    const temperatureKelvin = weatherResponse.data.main.temp;

    const temperature = (temperatureKelvin - 273.15).toFixed(0) + "°C";

    const activities = await Activity.findAll({
      where: { weather: weather },
      attributes: {
        exclude: ["id", "createdAt", "updatedAt"],
      },
    });

    if (
      [
        "Thunderstorm",
        "Squall",
        "Haze",
        "Dust",
        "Fog",
        "Sand",
        "Ash",
        "Tornado",
      ].includes(weather)
    ) {
      return res.status(200).send({
        message: "I think stay at home is not that bad",
        status: 200,
        city,
      });
    }

    if (
      [
        "ragged shower rain",
        "sleet",
        "heavy snow",
        "heavy intensity shower rain",
        "freezing rain",
        "extreme rain",
        "very heavy rain",
      ].includes(weatherDesc)
    ) {
      return res.status(200).send({
        message: "It's up to you now, the weather isn't that good, right?",
        status: 200,
        city
      });
    }


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
      temperature: temperature,
      city
    });
  } catch (err) {
    console.error(err);
    return res.status(500).send({
      message: err.message,
      status: 500,
    })
  }
}
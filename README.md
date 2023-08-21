# Touch Grass API
I need touch some grass

## About
Simple REST API for people who needs touch some grass, inspired by [Bored-API](https://www.boredapi.com/), make with [NodeJS](https://nodejs.org/), [ExpressJS](https://expressjs.com/) and [MySQL](https://www.mysql.com/). The output is an activity you can do outside based on the weather taken from [OpenWeather](https://openweathermap.org/) in your city.
##### ORM Database  : Sequelize

## Endpoints
#### Random event
Get random activity based on the weather in your city tracked from your ip address
```
api/v1/activity/
```
Response:
```
{
    "message": {
        "activity": "Casual Bike Ride in the Park",
        "type": "recreational",
        "participants": 1,
        "weather": "Clouds"
    },
    "status": 200,
    "temperature": "22°C",
    "city": "Yogyakarta"
}
```

#### Get by city
get activity in a specific city
```
api/v1/activity/{city_name}
```
Response:
```
{
    "message": {
        "activity": "Casual Bike Ride in the Park",
        "type": "recreational",
        "participants": 1,
        "weather": "Clouds"
    },
    "status": 200,
    "temperature": "22°C",
    "city": "{city_name}"
}
```


---
## Installation

#### Download Code | Clone the Repo

```bash
git clone https://github.com/bintangshada/touch-grass-api.git
```

#### Install Node Modules
```bash
npm install
```

#### Setup .env File and import Database
You will find a .env.example file. Paste the contents of that into a file named .env in the same directory. 
Fill in the variables to fit your application. Import manual the database file from app/database/activity.sql to your device.

```bash
touch .env
```

---

## Using
```bash
npm start
```
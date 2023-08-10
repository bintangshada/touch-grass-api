module.exports = (app) => {
    const activityController = require("../../controllers/activity.controller");
    const router = require("express").Router();
  
    router.get("/", activityController.randomActivity);
  
    app.use("/api/v1/activity", router);
  };
  
module.exports = (app) => {
    const activityController = require("../../controllers/activity.controller");
    const router = require("express").Router();
  
    router.get("/:city", activityController.randomActivity);
    router.get("/", activityController.defaultResponse);
  
    app.use("/api/v1/activity", router);
  };
  
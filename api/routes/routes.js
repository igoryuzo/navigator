"use-strict";

const express = require("express");
const router = express.Router();

const scrapCtrl = require("../controllers/scrapper");
const stockCtrl = require("../controllers/stocks");
const evalCtrl  = require("../controllers/evaluate");
const loginCtrl = require("../controllers/login");

// AUTH
router.post("/login", loginCtrl.login);
router.post("/refresh_token", loginCtrl.refresh_token);

router.get("/scrap", scrapCtrl.scrapItems);
router.get("/stocks", stockCtrl.saveStocks);
router.get("/evaluate", evalCtrl.evaluate);

module.exports = router;
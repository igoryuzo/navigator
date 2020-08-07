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

// STOCKS
router.get("/stocks", stockCtrl.saveStocks);
router.get("/stocks/subscribe", stockCtrl.subscribeStocks);

router.get("/scrap", scrapCtrl.scrapItems);
// router.post("/evaluate", evalCtrl.evaluate);
router.get("/evaluate/:order/:orderBy", evalCtrl.evaluate);

// SCRIPT BATCHES
router.get("/batches", evalCtrl.get_script_batches);

module.exports = router;
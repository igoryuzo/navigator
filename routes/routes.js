"use-strict";

const express = require("express");
const router = express.Router();

const scrapCtrl = require("../controllers/scrapper");
const stockCtrl = require("../controllers/stocks");
const evalCtrl = require("../controllers/evaluate");

router.get("/scrap", scrapCtrl.scrapItems);
router.get("/stocks", stockCtrl.saveStocks);
router.get("/evaluate", evalCtrl.evaluate);

module.exports = router;
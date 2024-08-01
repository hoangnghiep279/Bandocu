const express = require("express");
const router = express.Router();
const { checkLogin } = require("../midlewares/checkLogin");
const controller = require("../controllers/product");

router.get("/", async (req, res, next) => {
    try {
        res.json(await controller.getProduct());
    } catch (error) {
        next(error);
    }
});
router.get("/productdetail", async (req, res, next) => {
    try {
        res.json(await controller.getProductDetail());
    } catch (error) {
        next(error);
    }
});
router.post("/addproduct", async (req, res, next) => {
    try {
        res.json(await controller.addProduct(req.body));
    } catch (error) {
        next(error);
    }
});
router.get("/category", async (req, res, next) => {
    try {
        res.json(await controller.getCategory());
    } catch (error) {
        next(error);
    }
});
router.get("/produser/:id", async (req, res, next) => {
    try {
        res.json(await controller.getProdUser(req.params.id));
    } catch (error) {
        next(error);
    }
});
module.exports = router;

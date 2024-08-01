const express = require("express");
const router = express.Router();
const controller = require("../controllers/user");
const { checkMyAccount } = require("../midlewares/checkPermission");

router.get("/", async (req, res, next) => {
    try {
        res.json(await controller.getUser());
    } catch (error) {
        next(error);
    }
});

router.get("/:id", async (req, res, next) => {
    try {
        res.json(await controller.getDetailInfo(req.params.id));
    } catch (error) {
        next(error);
    }
});

router.post("/", async (req, res, next) => {
    try {
        res.json(await controller.login(req.body));
    } catch (error) {
        next(error);
    }
});

router.post("/register", async (req, res, next) => {
    try {
        res.json(await controller.register(req.body));
    } catch (error) {
        next(error);
    }
});
router.put("/changepass/:id", async (req, res, next) => {
    try {
        res.json(await controller.changePass(req.params.id, req.body));
    } catch (error) {
        next(error);
    }
});

module.exports = router;

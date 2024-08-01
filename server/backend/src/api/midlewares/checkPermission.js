const db = require("../helpers/database");

// User
const checkMyAccount = async (req, res, next) => {
    try {
        if (req.payload.id != req.params.id) {
            var err = new Error("User không hợp lệ!");
            err.statusCode = 401;
            next(err);
        }
        next();
    } catch (error) {
        next(error);
    }
};

module.exports = {
    checkMyAccount,
};

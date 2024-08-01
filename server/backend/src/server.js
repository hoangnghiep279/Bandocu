const { writeFileSync } = require("fs");
const express = require("express");
const cors = require("cors");
const app = express();
const config = require("./config/config");
const productRouter = require("./api/routes/product");
const userRouter = require("./api/routes/user");

app.use(express.json());
app.use(
    express.urlencoded({
        extended: true,
    })
);
app.use(cors());

app.get("/", (req, res, next) => {
    res.json({
        code: 200,
        message: "Success",
    });
});

// Router
app.use("/product", productRouter);
app.use("/user", userRouter);

// Error
app.use((err, req, res, next) => {
    const statusCode = err.statusCode || 500;
    writeFileSync(
        "./src/api/log/log.txt",
        `============================================================================
        ${Date()}
        message: ${err.message}
        stack: ${err.stack}\n`,
        { flag: "a" }
    );
    res.status(statusCode).json({
        code: statusCode,
        message: err.message,
    });
});

app.listen(config.port, () => {
    console.log(`App listen at http://localhost:${config.port}`);
});

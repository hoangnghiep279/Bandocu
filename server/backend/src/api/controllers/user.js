const db = require("../helpers/database");
const { signToken } = require("../helpers/token");

async function getUser(page, keyword) {
    try {
        const result = await db.execute("SELECT * FROM `user` ORDER BY `id` DESC");

        return {
            code: 200,
            data: result,
        };
    } catch (error) {
        throw error;
    }
}

async function getDetailInfo(id) {
    try {
        const result = await db.execute(
            `SELECT \`id\`, \`email\`, \`name\`, \`profile_img\`, \`address\`, \`created_at\`, \`update_at\` FROM \`user\` WHERE \`id\` = '${id}';`
        );

        if (result.length === 0) {
            let err = new Error("Không tìm thấy người dùng này!");
            err.statusCode = 404;
            throw err;
        }

        return {
            code: 200,
            data: result[0],
        };
    } catch (error) {
        throw error;
    }
}

async function login(user) {
    try {
        const result = await db.execute(`
            SELECT
                \`id\`,
                \`name\`,
                \`email\`,
                \`address\`,
                \`sdt\`,
                \`profile_img\`,
                \`created_at\`
            FROM
                \`user\`
            WHERE
                \`email\` = '${user.email}' AND
                \`password\`= '${user.password}'
        `);

        if (result.length === 0) {
            let err = new Error("Tài khoản mật khẩu không chính xác!");
            err.statusCode = 400;
            throw err;
        }

        const accessToken = await signToken(result[0].id);

        return {
            code: 200,
            data: {
                accessToken: accessToken,
                user: result[0],
            },
        };
    } catch (error) {
        throw error;
    }
}

async function register(user) {
    try {
        const checkEmail = await db.execute(`
                SELECT
                    \`id\`,
                    \`name\`,
                    \`email\`,
                    \`password\`
                FROM
                    \`user\`
                WHERE
                    \`email\` = '${user.email}'
                
                `);
        if (checkEmail.length !== 0) {
            let err = new Error("Email này đã đăng ký, Vui lòng đăng ký bằng email khác!");
            err.statusCode = 400;
            throw err;
        }

        const result = await db.execute(`
                INSERT INTO \`user\`(\`id\`, \`name\`, \`email\`, \`password\`)
                VALUES(
                    uuid(),
                    '${user.name}',
                    '${user.email}',
                    '${user.password}'
                )                              
            `);

        return {
            code: 200,
            message: "Đăng ký thành công",
        };
    } catch (error) {
        throw error;
    }
}
async function changePass(id, user) {
    try {
        const checkPass = await db.execute(`
            SELECT id, password
            FROM user
            WHERE id = '${id}' AND
            password = '${user.curPass}'
        `);
        if (checkPass.length == 0) {
            let err = new Error("Mật khẩu hiện tại không đúng, Vui lòng nhập lại");
            err.statusCode = 400;
            throw err;
        }

        const result = await db.execute(`
            UPDATE user
            SET  \`password\` = '${user.newPass}'
            WHERE id = '${id}'
        `);

        return {
            code: 200,
            message: "Đổi mật khẩu thành công",
        };
    } catch (error) {
        throw error;
    }
}

module.exports = {
    getUser,
    getDetailInfo,
    login,
    register,
    changePass,
};

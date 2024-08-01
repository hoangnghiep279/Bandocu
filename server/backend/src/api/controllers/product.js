const db = require("../helpers/database");
const { v4: uuidv4 } = require("uuid");

async function getProduct(page, keyword) {
    try {
        const result = await db.execute(
            `SELECT p.id, p.name, p.img, p.price, p.quantity, c.type FROM products p INNER JOIN category c ON p.category_id = c.id;`
        );

        return {
            code: 200,
            data: result,
        };
    } catch (error) {
        throw error;
    }
}

async function getProductDetail(page, keyword) {
    try {
        const result = await db.execute(
            // `SELECT p.id,p.name, p.img, p.price, p.quantity, i.img_url FROM products p INNER JOIN product_img i ON p.id = i.prod_id;`
            `SELECT 
            p.id,
            p.name, 
            p.img, 
            p.price, 
            p.quantity, 
            i.img_url,
            c.type 
        FROM 
            products p 
        INNER JOIN 
            product_img i ON p.id = i.prod_id
        INNER JOIN 
            category c ON p.category_id = c.id;`
        );

        return {
            code: 200,
            data: result,
        };
    } catch (error) {
        throw error;
    }
}

async function getCategory(page, keyword) {
    try {
        const result = await db.execute(`SELECT * FROM \`category\` `);
        return {
            code: 200,
            data: result,
        };
    } catch (error) {
        throw error;
    }
}

// Endpoint để thêm sản phẩm mới
async function addProduct(product) {
    try {
        const getCategory = await db.execute(
            `
            SELECT id FROM category WHERE id = '${product.category_id}'
        `
        );

        if (getCategory[0].length === 0) {
            throw new Error("Category không tồn tại");
        }

        const categoryId = getCategory[0].id;

        // Khi thêm sản phẩm mới
        //         VALUES (
        //             uuid(),
        //                '${product.user_id}',
        //                '${product.name}',
        //                '${product.img}',
        //                '${product.price}',
        //                '${product.quantity}',
        //                '${categoryId}',
        //                0,
        //                1)
        //    `
        const productId = uuidv4();

        const insertProduct = await db.execute(
            `
            INSERT INTO  \`products\` (\`id\`,
                \`user_id\`,
                \`name\`,
                \`img\`,
                \`price\`,
                \`quantity\`,
                \`category_id\`,
                \`is_delete\`,
                \`status\`)
                 VALUES (?, ?, ?, ?, ?, ?, ?, 0, 1)
    `,
            [productId, product.user_id, product.name, product.img, product.price, product.quantity, categoryId]
        );

        const prodId = productId;

        for (const imageUrl of product.additional_images) {
            await db.execute(
                `
            INSERT INTO product_img (id,prod_id, img_url)
              VALUES (uuid(), ?, ?)
        `,
                [prodId, imageUrl]
            );
        }

        return {
            code: 200,
            message: "Thêm sản phẩm thành công",
        };
    } catch (error) {
        throw error;
    }
}
async function getProdUser(id) {
    try {
        const result = await db.execute(
            `SELECT
    p.id,
    p.user_id,
    p.name,
    p.img,
    p.price,
    p.quantity
FROM
    products p
INNER JOIN USER u ON
    p.user_id = u.id
  WHERE
                p.user_id = ?`,
            [id]
        );

        return {
            code: 200,
            data: result,
        };
    } catch (error) {
        throw error;
    }
}

module.exports = {
    getProduct,
    getProductDetail,
    addProduct,
    getCategory,
    getProdUser,
};

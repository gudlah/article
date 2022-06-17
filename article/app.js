const express = require('express');
const cors = require('cors');
const connection = require('./library/database');
const {clearInput, returnResponse, sekarang} = require('./library/helper');
const bodyParser = require('body-parser');
const app = express();
app.use(bodyParser.json());
app.use(cors());

app.get('/article', (req, res) => {
    const { status } = req.query;
    const where = (!status) ? '' : `WHERE status = '${status}'`;
    const query = `SELECT * FROM posts ${where} ORDER BY id ASC`;
    connection.query(query, (err, rows) => res.json(returnResponse(err, rows)));
});

app.get('/article/count', (req, res) => {
    const query = `SELECT COUNT(id) AS jumlah, 'publish' AS param FROM posts WHERE status = 'publish'
    UNION
    SELECT COUNT(id) AS jumlah, 'draft' AS param FROM posts WHERE status = 'draft'
    UNION
    SELECT COUNT(id) AS jumlah, 'thrash' AS param FROM posts WHERE status = 'thrash'`;
    connection.query(query, (err, rows) => res.json(returnResponse(err, rows)));
});

app.get('/article/:limit/:offset', (req, res) => {
    const { limit, offset } = req.params;
    const query = `SELECT * FROM posts ORDER BY id ASC LIMIT ${limit} OFFSET ${offset}`;
    connection.query(query, (err, rows) => res.json(returnResponse(err, rows)));
});

app.get('/article/:id', (req, res) => {
    const { id } = req.params;
    const query = `SELECT * FROM posts WHERE id = ${id}`;
    connection.query(query, (err, rows) => {
        let response = {};
        if(err) {
            response = {
                status: false,
                message: err
            };
        } else {
            response = {
                status: true,
                message: 'ok',
                data: (rows.length > 0)? rows[0] : null
            };
        }
        res.json(response);
    });
});

app.post('/article', (req, res) => {
    const { title, content, category, status } = req.body;
    const validasi = clearInput(res, req.body);
    if (validasi) {
        const query = `INSERT INTO posts VALUES (NULL, '${title}', '${content}', '${category}', NULL, NULL, '${status}')`;
        connection.query(query, (err, rows) => {
            if(err) {
                response = {
                    status: false,
                    message: err
                };
            } else {
                response = {
                    status: true,
                    message: 'ok'
                };
            }
            res.json(response);
        });
    }
});

app.put('/article/:id', (req, res) => {
    const { id } = req.params;
    const queryCek = `SELECT * FROM posts WHERE id = ${id}`;
    connection.query(queryCek, (error, rows) => {
        if (error) {
            res.json({
                status: false,
                message: error
            });
        } else if (rows.length == 0) {
            res.json({
                status: false,
                message: 'Data tidak ditemukan'
            });
        } else {
            const { title, content, category, status } = req.body;
            const validasi = clearInput(res, req.body);
            if (validasi) {
                const query = `UPDATE posts SET title = '${title}', content = '${content}', category = '${category}', status = '${status}', updated_date = '${sekarang()}' WHERE id = ${id}`;
                connection.query(query, err => {
                    let response = {};
                    if(err) {
                        response = {
                            status: false,
                            message: err
                        };
                    } else {
                        response = {
                            status: true,
                            message: 'ok'
                        };
                    }
                    res.json(response);
                });
            }
        }
    });
});

app.delete('/article/:id', (req, res) => {
    const { id } = req.params;
    const queryCek = `SELECT * FROM posts WHERE id = ${id}`;
    connection.query(queryCek, (error, rows) => {
        if (error) {
            res.json({
                status: false,
                message: error
            });
        } else if (rows.length == 0) {
            res.json({
                status: false,
                message: 'Data tidak ditemukan'
            });
        } else {
            const query = `UPDATE posts SET status = 'thrash', updated_date = '${sekarang()}' WHERE id = ${id}`;
            connection.query(query, err => {
                let response = {};
                if(err) {
                    response = {
                        status: false,
                        message: err
                    };
                } else {
                    response = {
                        status: true,
                        message: 'ok'
                    };
                }
                res.json(response);
            });
        }
    });
});

app.listen(3000, () => console.log('listenig on localhost:3000'));
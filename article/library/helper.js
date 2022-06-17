module.exports = {
    clearInput: (res, { title, content, category, status }) => {
        let hasil = false;
        if (String(title).length < 20) {
            res.json({
                status: false,
                message: 'Judul harus diisi dengan panjang minimal 20 karakter'
            });
        } else if (String(content).length < 200) {
            res.json({
                status: false,
                message: 'Konten harus diisi dengan panjang minimal 200 karakter'
            });
        } else if (String(category).length < 3) {
            res.json({
                status: false,
                message: 'Kategori harus diisi dengan panjang minimal 3 karakter'
            });
        } else if (!['publish', 'draft', 'thrash'].includes(status)) {
            res.json({
                status: false,
                message: 'Status harus diisi dengan nilai Publish, Draft atau Thrash'
            });
        } else {
            hasil = true;
        }
        return hasil;
    },
    returnResponse: (err, rows) => {
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
                data: rows
            };
        }
        return response;
    },
    sekarang: () => {
        let today = new Date();
        let ss = String(today.getSeconds() + 1).padStart(2, "0");
        let ii = String(today.getMinutes() + 1).padStart(2, "0");
        let hh = String(today.getHours() + 1).padStart(2, "0");
        let dd = String(today.getDate()).padStart(2, "0");
        let mm = String(today.getMonth() + 1).padStart(2, "0");
        let yyyy = today.getFullYear();
        return `${yyyy}-${mm}-${dd} ${hh}:${ii}:${ss}`;
    }
};
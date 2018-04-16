var fields = document.querySelectorAll('[data="ckeditor"]')
fields.forEach(function callback(field, index, array) {
    CKEDITOR.replace(field, { "toolbar": "mini", "language": "ru" });
});

document.querySelectorAll('[data="ckeditor"]').forEach(field => {
  CKEDITOR.replace(field, { "language": "ru" });
});

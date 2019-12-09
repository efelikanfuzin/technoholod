document.querySelectorAll('[data="ckeditor"]').forEach(field => {
  CKEDITOR.replace(field, { 
    "language": "ru",
    "filebrowserBrowseUrl": "/ckeditor/attachment_files",
    "filebrowserFlashBrowseUrl": "/ckeditor/attachment_files",
    "filebrowserFlashUploadUrl": "/ckeditor/attachment_files",
    "filebrowserImageBrowseLinkUrl": "/ckeditor/pictures",
    "filebrowserImageBrowseUrl": "/ckeditor/pictures",
    "filebrowserImageUploadUrl": "/ckeditor/pictures",
    "filebrowserUploadUrl": "/ckeditor/attachment_files",
  });
});

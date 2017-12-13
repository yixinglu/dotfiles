(defun yee-format-dir (path)
  (replace-regexp-in-string "[-/]" "_" path))

(defun yee-prefix-file (prefix)
  (concat prefix (file-name-nondirectory (file-name-sans-extension (buffer-file-name)))))

(defun yee-del-substr (str sub)
  (substring str (string-width sub) nil))

(defun yee-del-src (dir)
  (let ((src "src_") (source "source_"))
    (cond ((string-match src dir) (yee-del-substr dir src))
          ((string-match source dir) (yee-del-substr dir source))
          (t dir))))

(defun google-cpp-header-guard ()
  (let ((proj-root (yee-format-dir (projectile-project-root)))
        (file-dir (yee-format-dir (file-name-directory (buffer-file-name)))))
    (upcase (yee-prefix-file (yee-del-src (yee-del-substr file-dir proj-root))))))

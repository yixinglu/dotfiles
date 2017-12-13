(defun format-dir (path)
  (replace-regexp-in-string "[-/]" "_" path))

(defun prefix-file (prefix)
  (concat prefix (file-name-nondirectory (file-name-sans-extension (buffer-file-name)))))

(defun del-substr (str sub)
  (substring str (string-width sub) nil))

(defun del-src (dir)
  (let ((src "src_") (source "source_"))
    (cond ((string-match src dir) (del-substr dir src))
          ((string-match source dir) (del-substr dir source))
          (t dir))))

(defun cpp-header-guard ()
  (let ((proj-root (format-dir (projectile-project-root)))
        (file-dir (format-dir (file-name-directory (buffer-file-name)))))
    (upcase (prefix-file (del-src (del-substr file-dir proj-root))))))

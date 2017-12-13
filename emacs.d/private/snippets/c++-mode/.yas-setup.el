(defun replace-dir-separator (path)
  (replace-regexp-in-string "[-/]" "_" path))

(defun prefix-for-file (prefix)
  (concat prefix (file-name-nondirectory (file-name-sans-extension (buffer-file-name)))))

(defun cut-str (str sub)
  (substring str (string-width sub) nil))

(defun proj-src (dir)
  (let ((src "src_") (source "source_"))
    (cond ((string-match src dir) (cut-str dir src))
          ((string-match source dir) (cut-str dir source))
          (t dir))))

(defun cpp-header-guard ()
  (let ((proj-root (replace-dir-separator (projectile-project-root)))
        (file-dir (replace-dir-separator (file-name-directory (buffer-file-name)))))
    (upcase (prefix-for-file (proj-src (cut-str file-dir proj-root))))))

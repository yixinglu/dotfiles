;;; private/make/config.el -*- lexical-binding: t; -*-

(defun make/project-root-name ()
  "get project name"
  (if (projectile-project-root)
      (file-name-nondirectory (directory-file-name (projectile-project-root)))
    nil))

(defun make/compilation-buffer-name ()
  "compilation buffer name, such as *compilation*<project-root-name>"
  (interactive)
  (if (make/project-root-name)
      (concat "*compilation*<" (make/project-root-name) ">")
    "*compilation*"))

(defun make/project-has-makefile-p()
  "check if there is a Makefile in project root directory"
  (and (projectile-project-root)
       (file-exists-p! (expand-file-name "Makefile" (projectile-project-root)))))

(defun make/project-compile()
  "compile project by makefile first and then projectile-project-compile"
  (interactive)
  (let ((compilation-buf (get-buffer (make/compilation-buffer-name)))
        (compilation-win (get-buffer-window (make/compilation-buffer-name))))
    (if compilation-win
        (delete-window compilation-win)
      (if (and compilation-buf (process-live-p (get-buffer-process compilation-buf)))
          (display-buffer compilation-buf)
        (if (make/project-has-makefile-p)
            (makefile-executor-execute-target (expand-file-name "Makefile" (projectile-project-root)))
          (projectile-compile-project))))))

(defun make/project-kill-compilation ()
  "kill the compilation if exists"
  (interactive)
  (let ((compilation-buf (get-buffer (make/compilation-buffer-name))))
    (unless (make/project-has-makefile-p)
      (error "No Makefile in project root!"))
    (when compilation-buf
      (display-buffer compilation-buf))
    (let ((proc (get-buffer-process compilation-buf)))
      (when (and proc (process-live-p proc))
        (interrupt-process proc)
        (message "Compilation interrupted!")))))

(use-package! makefile-executor
  :defer t)

(map! :leader
      :prefix "p"
      :desc "Compile project (with Makefile support)" :n "c" #'make/project-compile
      :desc "Kill compilation (if running)" :n "k" #'make/project-kill-compilation)

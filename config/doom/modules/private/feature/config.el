;;; private/feature/config.el -*- lexical-binding: t; -*-

(use-package! feature-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.feature\\'" . feature-mode))
  (setq feature-indent-level 2)
  (setq feature-comment-indent 0))

;;; private/feature/config.el -*- lexical-binding: t; -*-

(use-package! feature-mode
  :defer t
  :config
  (add-to-list 'auto-mode-alist '("\\.feature\\'" . feature-mode))
  (setq-local evil-shift-width 2)
  (setq feature-indent-level 2)
  (setq feature-comment-indent 0))

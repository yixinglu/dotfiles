;;; private/bison/config.el -*- lexical-binding: t; -*-

(use-package! bison-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.lex\\'" . flex-mode))
  (add-to-list 'auto-mode-alist '("\\.yy\\'" . bison-mode)))

;;; private/bison/config.el -*- lexical-binding: t; -*-

(use-package! bison-mode
  :defer t
  :config
  (dolist (pair '(("\\.lex\\'" . flex-mode)
                  ("\\.yy\\'" . bison-mode)))
    (add-to-list 'auto-mode-alist pair)))

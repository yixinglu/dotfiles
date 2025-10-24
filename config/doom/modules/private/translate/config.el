;;; private/translate/config.el -*- lexical-binding: t; -*-

(use-package! gt
  :defer t
  :init
  (setq gt-langs '(en zh))
  :config
  (setq gt-default-translator (gt-translator :engines (gt-bing-engine))))

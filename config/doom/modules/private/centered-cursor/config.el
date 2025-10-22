;;; private/centered-cursor/config.el -*- lexical-binding: t; -*-

(unless (boundp 'mouse-wheel-up-event)
  (defvar mouse-wheel-up-event 'mouse-4))
(unless (boundp 'mouse-wheel-down-event)
  (defvar mouse-wheel-down-event 'mouse-5))
(use-package! centered-cursor-mode
  :config
  (global-centered-cursor-mode))

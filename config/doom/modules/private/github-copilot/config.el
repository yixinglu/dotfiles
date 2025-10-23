;;; private/github-copilot/config.el -*- lexical-binding: t; -*-

(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion))
  :config
  (setq copilot-idle-delay 0.3))

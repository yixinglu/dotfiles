;;; private/github-copilot/config.el -*- lexical-binding: t; -*-

(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion))
  :config
  (setq copilot-idle-delay 0.3))

(use-package! copilot-chat
  :defer t
  :config
  (setq copilot-chat-openai-model "gpt-4-turbo"
        copilot-chat-response-timeout 20))

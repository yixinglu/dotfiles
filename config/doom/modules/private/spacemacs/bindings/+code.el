;;; private/spacemacs/bindings/+code.el -*- lexical-binding: t; -*-

;; (map!
;;  (:after chatgpt-shell
;;          (:leader
;;           (:prefix "c"
;;            :desc "LLM compose" :n "g" #'chatgpt-shell-prompt-compose))))

;; (map!
;;  (:prefix "g"
;;   :nv "+" #'evil-numbers/inc-at-pt
;;   :nv "R" #'+lookup/references
;;   :nv "D" #'valrus/goto-def-ace-window))

(map! :map c++-ts-mode-map
      :localleader
      (:prefix ("g" . "lookup")
      "d" #'+lookup/definition
      "i" #'+lookup/implementations
      "r" #'+lookup/references
      "a" #'projectile-find-other-file)
      (:prefix ("r" . "refactor")
      "r" #'eglot-rename)
      :after cc)

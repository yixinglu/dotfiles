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

;; (map!
;;  (:map c++-mode-map
;;   :localleader
;;   (:prefix "g"
;;    :desc "" :n "c" #'valrus/pytest-copy-test-name)))

;; (after! cc
;;   (:map c++-ts-mode-map
;;         (:localleader
;;          (:prefix "g"
;;           :desc "Find definition" :n "d" #'xref-find-definitions
;;           :desc "Find references" :n "r" #'xref-find-references))))

;; (after! cc
;;   (add-hook 'c++-ts-mode-hook
;;             (lambda ()
;;               (map! :localleader
;;                     :prefix "g"
;;                     :n "d" #'xref-find-definitions
;;                     :n "r" #'xref-find-references))))

;; (map!
;;  (:after cc
;;          (:map c++-ts-mode-map
;;                (:localleader
;;                 (:prefix "g"
;;                  :desc "Find definition" :n "d" #'+lookup/definition
;;                  :desc "Find references" :n "r" #'+lookup/references)))))

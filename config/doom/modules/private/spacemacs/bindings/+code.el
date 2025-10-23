;;; private/spacemacs/bindings/+code.el -*- lexical-binding: t; -*-

(map! :map c++-ts-mode-map
      :localleader
      (:prefix ("g" . "lookup")
       "d" #'+lookup/definition
       "i" #'+lookup/implementations
       "r" #'+lookup/references
       "a" #'projectile-find-other-file)
      (:prefix ("r" . "refactor")
       "r" #'eglot-rename)
      (:prefix ("h" . "help")
       "h" #'+lookup/documentation)
      :after cc)

;;; private/highlight/config.el -*- lexical-binding: t; -*-

(use-package! auto-highlight-symbol
  :config
  (setq ahs-case-fold-search nil
        ahs-default-range 'ahs-range-whole-buffer
        ahs-idle-interval 0.25
        ahs-inhibit-face-list nil))

;; (after! transient
;;   (transient-define-prefix highlight-symbol-transient-state ()
;;     "Highlight Symbol Transient State"
;;     :hint nil
;;     [:description "Highlight Symbol Transient State\n"
;;     ("n" "next" ahs-forward :transient t)
;;     ("p" "prev" ahs-backward :transient t)
;;     ("e" "edit" ahs-edit-mode :transient nil)
;;     ("q" "quit" transient-quit-all)]))

;; (defun auto-highlight-symbol()
;;   "Enable auto-highlight-symbol mode and enter the transient state."
;;   (interactive)
;;   (unless (bound-and-true-p auto-highlight-symbol-mode)
;;     (auto-highlight-symbol-mode 1)
;;     (highlight-symbol-transient-state/body)))

(defun highlight-symbol-at-point()
  "Highlight/unhighlight symbol at point using auto-highlight-symbol."
  (interactive)
  (when (thing-at-point 'symbol t)
    (if (bound-and-true-p auto-highlight-symbol-mode)
        (auto-highlight-symbol-mode -1)
      (auto-highlight-symbol-mode 1))))

(defun highlight-edit-symbol-at-point()
  "Highlight symbol at point and enter edit mode."
  (interactive)
  (when (thing-at-point 'symbol t)
    (unless (bound-and-true-p auto-highlight-symbol-mode)
      (auto-highlight-symbol-mode 1)
      (ahs-edit-mode))))

(map!
  :leader
  :prefix "s"
  :desc "iedit-mode" :n "e" #'ahs-edit-mode
  :desc "Highlight symbol at point" :n "h" #'highlight-symbol-at-point)

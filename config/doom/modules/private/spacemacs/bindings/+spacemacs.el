;;; $DOOMDIR/modules/private/spacemacs/bindings/+spacemacs.el -*- lexical-binding: t; -*-

(map!
 ;; Comma for shortcut to local-leader
 :nv "," (λ! (push (cons t ?m) unread-command-events)
             (push (cons t 32) unread-command-events))

 ;; Use C-a as the window operations prefix for when I accidentally think I'm in tmux
 :n "C-a" (λ! (push (cons t ?w) unread-command-events)
              (push (cons t 32) unread-command-events))

 (:leader
  (:prefix "f"
   :desc "Save file (Spacemacs)" :n "s" #'save-buffer
   :desc "Save all buffers (Spacemacs)" :n "S" #'wgrep-save-all-buffers
   :desc "Dired (Spacemacs)" :n "j" #'dired-jump
   :desc "Find file (Spacemacs)" :n "f" #'find-file)
  (:prefix "s"
   :desc "Search project at point (Spacemacs)" :n "P" #'+default/search-project-for-symbol-at-point
   :desc "iedit-mode (Spacemacs)" :n "e" #'iedit-mode
   :desc "Highlight symbol at point (Spacemacs)" :n "h" #'highlight-symbol-at-point
   :desc "Unhighlight symbol (Spacemacs)" :n "H" #'unhighlight-regexp)
  (:prefix "b"
   :desc "Kill buffer (Spacemacs)" :n "d" #'kill-current-buffer
   :desc "Switch buffer (Spacemacs)" :n "b" #'switch-to-buffer)
  (:prefix "r"
   :desc "Yank from kill ring" :n "y" #'consult-yank-from-kill-ring
   :desc "Repeat select" :n "L" #'vertico-repeat-select
   :desc "Repeat previous" :n "l" #'vertico-repeat-previous)
  (:prefix "t"
   :desc "Toggle truncate lines" :n "l" #'toggle-truncate-lines)
  (:prefix "g"
   :desc "Magit status" :n "s" #'magit-status)
  (:prefix "c"
   :desc "Comment/Uncomment line" :n "l" #'comment-line)
  (:prefix "i"
   :desc "Insert line below" :n "j" #'+evil/insert-newline-below
   :desc "Insert line above" :n "k" #'+evil/insert-newline-above)
  (:prefix "j"
   :desc "Goto char" :n "j" #'evil-avy-goto-char-timer
   :desc "Jump to symbol" :n "i" #'consult-imenu
   :desc "Goto line" :n "l" #'evil-avy-goto-line)
  (:prefix "n"
   :desc "Narrow region" :n "r" #'narrow-to-region
   :desc "Narrow function" :n "f" #'narrow-to-defun
   :desc "Narrow widen" :n "w" #'widen)
  (:prefix "p"
   :desc "Find project file (Spacemacs)" :n "f" #'projectile-find-file)))

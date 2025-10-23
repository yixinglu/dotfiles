;;; $DOOMDIR/modules/private/spacemacs/bindings/+main.el -*- lexical-binding: t; -*-


(map!
 :desc "Redo" :n "U" #'undo-fu-only-redo
 :desc "Page up" :nvi "C-k" #'evil-scroll-page-up
 :desc "Page down" :nvi "C-j" #'evil-scroll-page-down
 :desc "Beginning of line" :n "gh" #'evil-beginning-of-line
 :desc "End of line" :n "gl" #'evil-end-of-line
 :desc "Top of window" :n "H" #'evil-window-top
 :desc "Bottom of window" :n "L" #'evil-window-bottom

 ;; Unmap this undo
 "C-x u" nil

 ;; Unmap these un-leaderish workspace creators
 "s-t" nil
 :gn "C-t" nil

 (:after evil
         (:map evil-insert-state-map
               "C-u" nil))

 (:prefix "z"
  :desc "open all folds" :n "O" #'+fold/open-all
  :desc "close all folds" :n "C" #'+fold/close-all)

 (:leader
  :desc "Enter command" :n "SPC" #'execute-extended-command
  (:prefix "h"
   :desc "Toggle profiler" :n "t" #'doom/toggle-profiler))

 (:leader
  :desc "Expand region" :n "v" #'er/expand-region)

 (:after org
         (:map org-mode-map
               (:localleader
                (:prefix ("c" . "controls")
                 :desc "Org C-c C-c" :n "c" #'org-ctrl-c-ctrl-c))))

 ;; (:map smerge-mode-map
 ;;       (:leader
 ;;        :desc "Smerge hydra" :n "=" #'+vc/smerge-hydra/body))

 ;; global bindings
 (:leader
  (:prefix "b"
   :desc "Switch buffer" :n "b" #'switch-to-buffer
   :desc "Rename buffer" :n "R" #'rename-buffer
   :desc "Kill buffer" :n "d" #'kill-current-buffer ; consistency with `SPC w d'
   :desc "Revert buffer" :n "v" (cmd! (revert-buffer t t)))

  (:prefix "o"
           (:prefix ("o" . "open org file")
            :desc "Open work notes" :n "w" #'popup-work-notes
            :desc "Open journal for today" :n "j" #'org-journal-new-entry
            :desc "Open todo file" :n "t" #'popup-todo-file))

  (:prefix ("l" . "workspace")
   :desc "Switch workspace" :n "l" #'+workspace/switch-to
   :desc "Create workspace" :n "c" #'+workspace/new)

  ;; window navigation
  (:prefix "w"
   ;; Displaced by other-frame keybinding
   :desc "Window enlargen" :n "O" #'doom/window-enlargen
   :desc "Ace-window" :n "SPC" #'ace-window
   :desc "Delete window" :n "d" #'evil-quit
   :desc "Maxium window" :n "m" #'doom/window-maximize-buffer
   :desc "Other window" :n "o" #'other-window)

  (:prefix ("F" . "frame")
   ;; Frame
   :desc "New frame" :n "n" #'make-frame
   :desc "Delete frame" :n "d" #'delete-frame
   :desc "Maximize frame" :n "m" #'toggle-frame-maximized
   :desc "Other frame" :n "o" #'other-frame)))

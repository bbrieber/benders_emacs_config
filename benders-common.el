(require 'color-theme)

(color-theme-initialize)
(color-theme-charcoal-black)

(set-face-foreground 'minibuffer-prompt "white")


(setq backup-by-copying-when-linked t)

;;;(desktop-save-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
;;;(load "~/.emacs.d/bash-completion.el")



(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)


;;IDO
(require 'ido)
(ido-mode t)    


(load "/usr/share/git-core/emacs/git.el")
(load "/usr/share/git-core/emacs/git-blame.el")
(require 'vc-git)

(add-to-list 'vc-handled-backends 'GIT)
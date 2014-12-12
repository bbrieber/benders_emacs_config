(push "/usr/share/emacs23/site-lisp/rosemacs-el" load-path) 

(require 'rosemacs)
(require 'slime)
(require 'slime-ros) 
(invoke-rosemacs)
(global-set-key "\C-x\C-r" ros-keymap)

(slime-setup '(slime-fancy slime-asdf slime-ros))
(defun kill-ros-python () (interactive)

    (set-process-query-on-exit-flag (get-process "roscore") nil)
    (kill-buffer "*roscore*")
    (set-process-query-on-exit-flag (get-process "Python") nil)
    (kill-buffer "*Python*")

  )



(defun sherpa-gazebo(args)
  "starts a new instance of sherpa_gazebo"
  (interactive "sarguments:")
  (ros-launch (format "sherpa_gazebo/launch/sherpa.launch %s" args)))

(add-to-list 'load-path "/opt/ros/hydro/share/roslisp_repl");;TODO maybe you rosemacs to add the path here

(setq *my-slime-ros-initialized* nil)

(defun start-slime-ros () "start a new instance of slime-ros (load the file if it has not been initialized...)" (interactive)
  (if *my-slime-ros-initialized* 
      (slime-ros) 
    (progn (require 'repl-config) (setq *my-slime-ros-initialized* t))))






;(autoload 'start-slime-ros "repl-config")
;;(require 'repl-config)

(global-set-key (kbd "S-C-p") 'kill-ros-python) 
(global-set-key (kbd "S-C-o") 'run-python)
(global-set-key (kbd "S-C-l") 'start-slime-ros) 

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

benders_emacs_config
====================

A set of different configuration files for my emacs

used with emacs24

usage include the needed files into your .emacs like this:


(load "~/benders_emacs_config/java")   
(load "~/benders_emacs_config/latex")   
(load "~/benders_emacs_config/prolog")   
(load "~/benders_emacs_config/common-lisp")   
(load "~/benders_emacs_config/project")   
(load "~/benders_emacs_config/ros")   
(load "~/benders_emacs_config/python")   
(load "~/benders_emacs_config/general")   





I use the following config for my pacakge management before doing enthing else
some pacakges are installed via apt in ubuntu ...


(when (>= emacs-major-version 24)   
  (require 'package)   
  (package-initialize)   
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)   
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)   
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))   
  
  
you can install missing packages by typing 
               M-x package-install           
               <package_name>
               

               
  

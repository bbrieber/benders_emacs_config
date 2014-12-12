benders_emacs_config
====================

A set of different configuration files for my emacs

used with emacs24


usage include the needed files into your .emacs like this:

(add-to-list 'load-path "~/config/emacs")
(load "benders-config")
(benders-complete-config)

it is important to add the config folder to your load-path!!!

instead of loading the complete config you can also load a sub-config
with 

(benders-latex)
(benders-java)
(benders-ros)
(benders-common)
(benders-lisp)
(benders-project)
(benders-prolog)
(benders-python)


I designed this configuration for my personal needs.
If someone finds it useful fell free to do what ever you like with my code.
most of the configuration is taken from the documentation of the used submodules



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
               

               
  

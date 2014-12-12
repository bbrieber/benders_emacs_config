;;(add-to-list 'load-path "~/config/emacs/emacs-for-python")

(defun benders-latex()(interactive)
  (load "benders-latex"))
(defun benders-commons()(interactive)
  (load "benders-common")) 
(defun benders-python()(interactive)
  (load "benders-python"))
(defun benders-ros()(interactive)
  (load "benders-ros"))
(defun benders-prolog()(interactive)
  (load "benders-prolog"))

(defun benders-c++()(interactive)
  (print "not done yet"))

(defun benders-lisp()(interactive)
  (print "not done yet"))

(defun benders-project()(interactive)
  (print "not done yet"))
(defun benders-java()(interactive)
  (print "not done yet"))

(defun benders-complete-config()(interactive)
  (benders-commons)
  (benders-latex)
  (benders-python)
  (benders-ros)
  (benders-prolog)
  (benders-c++)
)
;(load "~/config/emacs/common-lisp")
;(load "~/config/emacs/project")
;(load "~/config/emacs/java");;IMPORTANT: THIS NEEDS CEDET DEFINED IN PROJECT 




(load "auctex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t) ;; .pdf statt .dvi per default:
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
;;Syntax Higlight
(add-hook 'LaTeX-mode-hook 'turn-on-font-lock)
;; Mathe Modus
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; Reftex einflechten und laden
(setq reftex-plug-into-AUCTeX t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; Satzende ". " statt ". ". " f ̈r u
;; M-k: l ̈schen o
;; bis Satzende usw.
(setq sentence-end "[.?!][]\"’)}]*\\($\\| \\| \\)[
;;]*") ;; Da ist ein "Newline in der Zeile!"
(setq sentence-end-double-space nil)
;;direkte Rechtschreib Korrektur:
;;(add-hook ’LaTeX-mode-hook ’flyspell-mode)
;; Nur benutzen falls Auctex > 11.81 mit preview-latex:
;;(load "preview-latex.el" nil t t)
;; aspell ist besser als ispell.
;; Zeile kommentieren, falls nicht installiert:
(setq-default ispell-program-name "aspell")
;; Deutsche Rechtschreibung falls \usepackage{ngerman}
;; oder german benutzt wird
;;(add-hook 'TeX-language-de-hook
;;(function (lambda () (ispell-change-dictionary "german8"))))

(setq TeX-view-program-list '(("Okular" "okular --unique %o#src:%n%b")))
(setq TeX-view-program-selection '((output-pdf "Okular")))
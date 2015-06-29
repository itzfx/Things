;; Get rid of unused "bars"
(menu-bar-mode -1);
(tool-bar-mode -1);


;; Try to keep things to 80 columns
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)


;; I like to know what line and column I'm on
(setq line-number-mode t)
(setq column-number-mode t)


;; Package management for MELPA Stable: http://stable.melpa.org/#/
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


;; Flycheck: https://github.com/flycheck/flycheck
;; Just start emacs, update packages with `M-x package-list-packages RET`, then install with `M-x package-install RET flycheck`
(defun flycheck-python-setup ()
  (flycheck-mode))
(add-hook 'python-mode-hook #'flycheck-python-setup)


;; SCSS Mode
;; Just start emacs, update packages with `M-x package-list-packages RET`, then install with `M-x package-install RET scss-mode`
(setq scss-compile-at-save nil)

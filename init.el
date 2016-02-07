;; Setup MELPA stable
(require 'package)
    (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Automatically install packages in `my-packages`
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(color-theme-sanityinc-tomorrow))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Setup the theme
(require 'color-theme-sanityinc-tomorrow)
(color-theme-sanityinc-tomorrow--define-theme eighties)

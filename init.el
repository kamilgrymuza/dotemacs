;; Setup MELPA stable
(require 'package)
    (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Automatically install packages in `my-packages`
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '())

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Custom themes path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

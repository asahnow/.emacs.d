;;; init.el --- personal Emacs configuration -*- lexical-binding: t; -*-
;;; Commentary:
;; Personal configuration for writing and editing

;;; Code:
(use-package emacs
  :config
  ;; Windows: Let Emacs draw cursor instead of using system’s pointer
  (when (boundp 'w32-use-visible-system-caret)
    (setq w32-use-visible-system-caret nil))
  
  :custom
  ;; Prevent variables from being set at the end of `init.el'
  (custom-file
   (file-name-concat user-emacs-directory "custom.el"))
  
  (package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")
     ("melpa" . "https://melpa.org/packages/")))
  
  (backup-by-copying t) ; Windows: preserve file creation date
  (backup-directory-alist
   `(("." . ,(file-name-concat user-emacs-directory "backups"))))

  (face-font-family-alternatives
   '(("Bricolage Grotesque" "Palatino Linotype")))
  
  :custom-face
  (default ((((type graphic))
             (:family "Iosevka Term SS12 Extended" :height 110))))
  (variable-pitch ((((type graphic))
                    (:family "Bricolage Grotesque" :height 110)))))

(use-package alabaster-themes
  :ensure t
  :custom
  (custom-safe-themes t) ; Treat all themes as safe
  (custom-enabled-themes
   '(alabaster-themes-light-bg
     newcomers-presets)))

;;; init.el ends here

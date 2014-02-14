(load-theme 'wombat t)
(add-to-list 'load-path "~/.emacs.d/")
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" .
    "http://melpa.milkbox.net/packages/") t)
  )
  (add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/") t)
(autoload 'octave-mode "octave-mod" nil t)
          (setq auto-mode-alist
                (cons '("\\.m$" . octave-mode) auto-mode-alist))
(autoload 'markdown-mode "markdown-mode.el" nil t)
(add-to-list 'auto-mode-alist '("\\.text" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(defun my-switch-to-other-buffer ()
  "Switch to other buffer"
  (interactive)
  (switch-to-buffer (other-buffer)))

(global-set-key (kbd "M-b") 'my-switch-to-other-buffer)

;;prevent the startup screen from opening
(setq inhibit-startup-message t)
;;line by line scrolling
(setq scroll-step 1)
;;mouse wheel
(mouse-wheel-mode t)
;;stop making backup files
(setq make-backup-files nil)
;;enable line numbering
(line-number-mode 1)
;;disable cursor blinking
(blink-cursor-mode 0)
;;show parenthesis close
(show-paren-mode 1)
;;bufferswitch
(ido-mode 1)
;;shell
(global-set-key "\C-xt" 'eshell)
;;get rid of the toolbar
(tool-bar-mode -1)
;;get rid of the scroll bar
(scroll-bar-mode -1)
;;get rid of the menu bar
(menu-bar-mode -1)

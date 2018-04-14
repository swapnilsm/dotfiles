(package-initialize)

;; I use =cask= and =pallet= for managing packages. These need to be included in
;; here to ensure that the correct version of =org= is used to render my
;; =configuration.org= file.
(require 'cask "/usr/local/Cellar/cask/0.8.3/cask.el")
(cask-initialize)
(require 'pallet)

(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
	 (quote
		("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
	 (quote
		(evil-magit org-bullets yasnippet use-package spacemacs-theme solarized-theme python-mode projectile pallet org-plus-contrib magit diff-hl auto-compile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

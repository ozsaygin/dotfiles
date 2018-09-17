(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)

  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/"))
		 '("melpa" . (concat proto "://melpa.milkbox.net/packages/")))
    (package-initialize)
    (when (not package-archive-contents)
      (package-refresh-contents)
      (package-install 'use-package))
    (require 'use-package)

    (custom-set-variables
     ;; custom-set-variables was added by Custom.
     ;; If you edit it by hand, you could mess it up, so be careful.
     ;; Your init file should contain only one such instance.
     ;; If there is more than one, they won't work right.
     '(package-selected-packages (quote (auto-complete))))
    (custom-set-faces
     ;; custom-set-faces was added by Custom.
     ;; If you edit it by hand, you could mess it up, so be careful.
     ;; Your init file should contain only one such instance.
     ;; If there is more than one, they won't work right.
     )
    (linum-mode)
    (desktop-save-mode 1)

    (c-set-style 'linux)
    (defun indent-buffer ()
      (interactive)
      (save-excursion
	(indent-region (point-min) (point-max) nil)))
    (global-set-key [f12] 'indent-buffer)

    (setq ring-bell-function 'ignore)
    (global-visual-line-mode t)
    (global-set-key [f1] 'shell)
    (setq c-basic-offset 6)
    (use-package magit
		 :ensure t
		 )
    (use-package irony
		 :ensure t
		 :defer t
		 :init
		 (add-hook 'c++-mode-hook 'irony-mode)
		 (add-hook 'c-mode-hook 'irony-mode)
		 (add-hook 'objc-mode-hook 'irony-mode)
		 :config
		 ;; replace the `completion-at-point' and `complete-symbol' bindings in
		 ;; irony-mode's buffers by irony-mode's function
		 (defun my-irony-mode-hook ()
		   (define-key irony-mode-map [remap completion-at-point]
		     'irony-completion-at-point-async)
		   (define-key irony-mode-map [remap complete-symbol]
		     'irony-completion-at-point-async))
		 (add-hook 'irony-mode-hook 'my-irony-mode-hook)
		 (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
		 )

    ;; == company-mode ==
    (use-package company
		 :ensure t
		 :defer t
		 :init (add-hook 'after-init-hook 'global-company-mode)
		 :config
		 (use-package company-irony :ensure t :defer t)
		 (setq company-idle-delay              nil
		       company-minimum-prefix-length   2
		       company-show-numbers            t
		       company-tooltip-limit           20
		       company-dabbrev-downcase        nil
		       company-backends                '((company-irony company-gtags))
		       )
		 :bind ("C-;" . company-complete-common)
		 )

(cond ((is-aquamacs)
       (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
       (longlines-mode nil)
       (one-buffer-one-frame-mode)
       (custom-set-variables '(aquamacs-styles-mode t))
       (autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
       (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
       
       (custom-set-faces)
       (set-face-attribute 'default nil
			   :family "Panic Sans"
			   :height 150)
       (setq standard-indent 2)
))

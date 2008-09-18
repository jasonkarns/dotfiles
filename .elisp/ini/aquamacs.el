(cond ((is-aquamacs)
       (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
       (one-buffer-one-frame-mode)
       (custom-set-variables '(aquamacs-styles-mode t))
       
       (custom-set-faces)
       (set-face-attribute 'default nil
			   :family "Panic Sans"
			   :height 150)
       (setq standard-indent 2)
))

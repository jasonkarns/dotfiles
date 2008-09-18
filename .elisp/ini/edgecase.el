(defun ido-edgecase-project ()
  (interactive)
  (cd 
   (ido-read-directory-name "Edgecase Clients:" "~/Projects/EdgeCase/clients")))

(global-set-key [?\C-c ?p ?e] 'ido-edgecase-project)
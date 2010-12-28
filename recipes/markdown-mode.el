(:name markdown-mode
       :type git
       :url "git://jblevins.org/git/markdown-mode.git"
       :features markdown-mode
       :after (lambda ()
		(add-to-list 'auto-mode-alist
			     '("\\.\\(md\\|mdt\\|text\\|mdown\\|markdown\\)\\'" . markdown-mode))
                (add-hook 'markdown-mode-hook (lambda () (variable-pitch-mode t)))))

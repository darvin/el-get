(:name git-commit
         :type git
         :url "https://github.com/rafl/git-commit-mode.git"
         :load "git-commit.el"
         :features git-commit
         :after (lambda ()
                  (setq auto-mode-alist
                        (append
                         '(("COMMIT_EDITMSG$" . git-commit-mode)) auto-mode-alist))


                  (add-hook 'git-commit-commit-hook
                            (lambda () (save-buffers-kill-terminal)))))

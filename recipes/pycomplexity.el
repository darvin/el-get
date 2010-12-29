(:name pycomplexity   :type git
         :url "https://github.com/garybernhardt/pycomplexity.git"
         :features ("pycomplexity" "linum")
         :load "pycomplexity.el"
         :after (lambda ()
                  (add-hook 'python-mode-hook
                            (function (lambda ()
                              (linum-mode)
                              (pycomplexity-mode))))))

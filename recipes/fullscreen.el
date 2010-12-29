(:name fullscreen       :type emacswiki :features "fullscreen" :load "fullscreen.el"
       :after (lambda () (global-set-key [f11] 'fullscreen-toggle)))

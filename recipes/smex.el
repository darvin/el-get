(:name smex
       :type git
       :url "http://github.com/nonsequitur/smex.git"
       :features smex
       :after (lambda ()
                (smex-initialize)
                (global-set-key [(meta x)] (lambda ()
                                             (interactive)
                                             (or (boundp 'smex-cache) (smex-initialize))
                                             (global-set-key [(meta x)] 'smex)
                                             (smex)))
                (global-set-key [(menu)] (lambda ()
                                             (interactive)
                                             (or (boundp 'smex-cache) (smex-initialize))
                                             (global-set-key [(meta x)] 'smex)
                                             (smex)))

                (global-set-key [(shift meta x)] (lambda ()
                                                   (interactive)
                                                   (or (boundp 'smex-cache)
                                                       (smex-initialize))
                                                   (global-set-key [(shift meta x)]
                                                                   'smex-major-mode-commands)
                                                   (smex-major-mode-commands)))))




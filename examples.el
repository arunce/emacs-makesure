;; with popwin
(require 'popwin)
(popwin-mode 1)

(push '("*shell*" :position bottom :height .3) popwin:special-display-config)
(push '("*Process List*" :position top) popwin:special-display-config)

(require 'makesure)
(global-set-key [f4] ( lambda () (interactive) (makesure:it-pops "*shell*" t 'shell)))
(global-set-key [f9] ( lambda () (interactive) (makesure:it-pops "*Process List*" nil 'list-processes)))

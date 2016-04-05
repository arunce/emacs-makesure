;; This example teachs sr-speedbar how to behave with popwin.
;; not only stops erratic duplicate windows as it only allow speedbar to be shown at the left side of the frame. 

;; simple sr-speedbar config
(require 'speedbar)
(setq speedbar-use-images nil)
(setq sr-speedbar-right-side nil)

;; popwin
(require 'popwin)
(popwin-mode 1)

(push '("*SPEEDBAR*" :position left) popwin:special-display-config)

;; makesure 
(require 'makesure)
(global-set-key [f8] ( lambda () (interactive) (makesure:it-pops "*SPEEDBAR*" nil 'sr-speedbar-open)))

;; for best results, toggle speedbar at least once.

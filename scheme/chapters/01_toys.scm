(load (build-path (current-directory) 'up "lib" "01.scm"))

(print (atom? 'pat)); => #t
(print (null? ())); => #t
(print (null? (quote (pat)))); => #f
(print (eq? 'pat 'pat)); => #t
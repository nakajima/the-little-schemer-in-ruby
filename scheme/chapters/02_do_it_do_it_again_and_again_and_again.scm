(load (build-path (current-directory) 'up "lib" "02.scm"))

; lat?
(print (lat? (quote (hamburger hotdog cheese)))); => #t
(print (lat? (quote (hamburger (hotdog cheese))))); => #f

; member?
(print (member? 'ruby (quote (ruby javascript lisp)))); #t
(print (member? 'java (quote (ruby javascript lisp)))); #f


(load (build-path (current-directory) 'up "lib" "03.scm"))

; rember
(print (rember 'lettuce (quote (bacon lettuce and tomato)))); # => (bacon and tomato)
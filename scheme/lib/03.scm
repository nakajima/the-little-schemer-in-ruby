(load (build-path (current-directory) 'up "lib" "02.scm"))

; Takes two arguments: a (atom) and lat (list). Removes the first
; occurance of a from lat and returns a new list.
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      ((eq? (car lat) a) (cdr lat))
        (else (cons (car lat)
          (rember a (cdr lat)))))))

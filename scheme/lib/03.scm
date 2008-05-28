; From Chapter 3: Cons the Magnificent...

(load (build-path (current-directory) 'up "lib" "02.scm")); Build on last section

; Takes two arguments: a (atom) and lat (list). Removes the first
; occurance of a from lat and returns a new list.
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      ((eq? (car lat) a) (cdr lat))
        (else (cons (car lat)
          (rember a (cdr lat)))))))

; Takes a list of lists and returns a new list consisting of the first item of each.
(define firsts
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      (else (cons (car (car lat))
              (firsts (cdr lat)))))))

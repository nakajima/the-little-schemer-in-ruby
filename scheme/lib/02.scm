; From Chapter 2: Do it, do it again, and again and again...

(load (build-path (current-directory) 'up "lib" "01.scm")); Build on last section

; The lat? function takes a list and returns true if there are
; no non-atoms in that list.
(define lat?
	(lambda (l)
		(cond
			((null? l) #t)
			((atom? (car l)) (lat? (cdr l)))
				(else #f))))

; Takes a (atom) and lat (list) and returns whether or not
; lat contains a.
(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? a (car lat))
        (member? a (cdr lat)))))))


; From Chapter 2: Do it, do it again, and again and again...

(load "01.scm"); Build on last section

; The lat? function takes a list and returns true if there are
; no non-atoms in that list.
(define lat?
	(lambda (l)
		(cond
			((null? l) #t)
			((atom? (car l)) (lat? (cdr l)))
				(else #f))))


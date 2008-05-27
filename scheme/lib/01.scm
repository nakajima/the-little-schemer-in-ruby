; From Chapter 1: Toys

; An atom is a string of letters beginning with a
; letter or a special character that isn't an open
; paren "(" or a closing paren ")"
(define atom? 
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
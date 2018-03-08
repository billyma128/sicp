(define (make-interval a b)
  (cons a b))
(define (upper-bound z)
  (max (car z) (cdr z)))
(define (lower-bound z)
  (min (car z) (cdr z)))

(define (make-center-percent c p)
  (let ((w (* c (/ p 100.0))))
    (make-interval (- c w) (+ c w))))
(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2.0))
(define (percent i)
  (let ((c (center i)))
    (* 100 (/ (- (upper-bound i) c) c))))

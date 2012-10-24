;; The prime factors of 13195 are 5, 7, 13 and 29.

;; What is the largest prime factor of the number 600851475143 ?

(ns net.skirmisher.euler.three
  (:use clojure.test)
  (:use clojure.contrib.math))

(defn smallest-divisor
  [n divisor]
  (cond (> (* divisor divisor) n) n
        (= (mod n divisor) 0) divisor
        :else (smallest-divisor n (+ divisor 1))))

(with-test
  (defn prime?
    [n]
    (= n (smallest-divisor n 2)))
(is (= true (prime? 7)))
(is (= false (prime? 8))))

(defn prime-factor?
  [factor n]
  (and (not (= 0 factor))
       (= (mod n factor) 0) 
       (prime? factor)))

(println (last (filter #(prime-factor? % 600851475143) (range (sqrt 600851475143)))))

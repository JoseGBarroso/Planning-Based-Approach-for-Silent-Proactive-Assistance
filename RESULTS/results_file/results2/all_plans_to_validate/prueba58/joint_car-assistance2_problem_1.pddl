(define (problem joint_car-assistance2_problem_1)
(:domain joint_car-assistance2_domain)
(:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-7 pos0-8 pos0-9 pos0-10 pos1-1 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos1-9 pos1-10 pos1-11 pos2-0 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos2-9 pos2-11 pos3-2 pos3-3 pos3-4 pos3-6 pos3-9 pos3-11 - place
    car0 - car
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (adj-walk pos0-0 pos0-1)
    (adj-walk pos0-1 pos0-0)
    (adj-car pos0-0 pos0-1)
    (adj-car pos0-1 pos0-0)
    (adj-car pos0-0 pos0-2)
    (adj-car pos0-2 pos0-0)
    (adj-car pos0-0 pos0-3)
    (adj-car pos0-3 pos0-0)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-walk pos0-1 pos1-1)
    (adj-walk pos1-1 pos0-1)
    (adj-car pos0-1 pos0-2)
    (adj-car pos0-2 pos0-1)
    (adj-car pos0-1 pos0-3)
    (adj-car pos0-3 pos0-1)
    (adj-car pos0-1 pos0-4)
    (adj-car pos0-4 pos0-1)
    (adj-car pos0-1 pos1-1)
    (adj-car pos1-1 pos0-1)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-car pos0-2 pos0-3)
    (adj-car pos0-3 pos0-2)
    (adj-car pos0-2 pos0-4)
    (adj-car pos0-4 pos0-2)
    (adj-car pos0-2 pos0-5)
    (adj-car pos0-5 pos0-2)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-walk pos0-3 pos1-3)
    (adj-walk pos1-3 pos0-3)
    (adj-car pos0-3 pos0-4)
    (adj-car pos0-4 pos0-3)
    (adj-car pos0-3 pos0-5)
    (adj-car pos0-5 pos0-3)
    (adj-car pos0-3 pos1-3)
    (adj-car pos1-3 pos0-3)
    (adj-car pos0-3 pos2-3)
    (adj-car pos2-3 pos0-3)
    (adj-car pos0-3 pos3-3)
    (adj-car pos3-3 pos0-3)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-car pos0-4 pos0-5)
    (adj-car pos0-5 pos0-4)
    (adj-car pos0-4 pos1-4)
    (adj-car pos1-4 pos0-4)
    (adj-car pos0-4 pos2-4)
    (adj-car pos2-4 pos0-4)
    (adj-car pos0-4 pos3-4)
    (adj-car pos3-4 pos0-4)
    (adj-walk pos0-5 pos1-5)
    (adj-walk pos1-5 pos0-5)
    (adj-car pos0-5 pos1-5)
    (adj-car pos1-5 pos0-5)
    (adj-car pos0-5 pos2-5)
    (adj-car pos2-5 pos0-5)
    (adj-walk pos0-7 pos0-8)
    (adj-walk pos0-8 pos0-7)
    (adj-walk pos0-7 pos1-7)
    (adj-walk pos1-7 pos0-7)
    (adj-car pos0-7 pos0-8)
    (adj-car pos0-8 pos0-7)
    (adj-car pos0-7 pos0-9)
    (adj-car pos0-9 pos0-7)
    (adj-car pos0-7 pos0-10)
    (adj-car pos0-10 pos0-7)
    (adj-car pos0-7 pos1-7)
    (adj-car pos1-7 pos0-7)
    (adj-car pos0-7 pos2-7)
    (adj-car pos2-7 pos0-7)
    (adj-walk pos0-8 pos0-9)
    (adj-walk pos0-9 pos0-8)
    (adj-walk pos0-8 pos1-8)
    (adj-walk pos1-8 pos0-8)
    (adj-car pos0-8 pos0-9)
    (adj-car pos0-9 pos0-8)
    (adj-car pos0-8 pos0-10)
    (adj-car pos0-10 pos0-8)
    (adj-car pos0-8 pos1-8)
    (adj-car pos1-8 pos0-8)
    (adj-car pos0-8 pos2-8)
    (adj-car pos2-8 pos0-8)
    (adj-walk pos0-9 pos0-10)
    (adj-walk pos0-10 pos0-9)
    (adj-walk pos0-9 pos1-9)
    (adj-walk pos1-9 pos0-9)
    (adj-car pos0-9 pos0-10)
    (adj-car pos0-10 pos0-9)
    (adj-car pos0-9 pos1-9)
    (adj-car pos1-9 pos0-9)
    (adj-car pos0-9 pos2-9)
    (adj-car pos2-9 pos0-9)
    (adj-car pos0-9 pos3-9)
    (adj-car pos3-9 pos0-9)
    (adj-walk pos0-10 pos1-10)
    (adj-walk pos1-10 pos0-10)
    (adj-car pos0-10 pos1-10)
    (adj-car pos1-10 pos0-10)
    (adj-walk pos1-3 pos1-4)
    (adj-walk pos1-4 pos1-3)
    (adj-walk pos1-3 pos2-3)
    (adj-walk pos2-3 pos1-3)
    (adj-car pos1-3 pos1-4)
    (adj-car pos1-4 pos1-3)
    (adj-car pos1-3 pos1-5)
    (adj-car pos1-5 pos1-3)
    (adj-car pos1-3 pos1-6)
    (adj-car pos1-6 pos1-3)
    (adj-car pos1-3 pos2-3)
    (adj-car pos2-3 pos1-3)
    (adj-car pos1-3 pos3-3)
    (adj-car pos3-3 pos1-3)
    (adj-walk pos1-4 pos1-5)
    (adj-walk pos1-5 pos1-4)
    (adj-walk pos1-4 pos2-4)
    (adj-walk pos2-4 pos1-4)
    (adj-car pos1-4 pos1-5)
    (adj-car pos1-5 pos1-4)
    (adj-car pos1-4 pos1-6)
    (adj-car pos1-6 pos1-4)
    (adj-car pos1-4 pos1-7)
    (adj-car pos1-7 pos1-4)
    (adj-car pos1-4 pos2-4)
    (adj-car pos2-4 pos1-4)
    (adj-car pos1-4 pos3-4)
    (adj-car pos3-4 pos1-4)
    (adj-walk pos1-5 pos1-6)
    (adj-walk pos1-6 pos1-5)
    (adj-walk pos1-5 pos2-5)
    (adj-walk pos2-5 pos1-5)
    (adj-car pos1-5 pos1-6)
    (adj-car pos1-6 pos1-5)
    (adj-car pos1-5 pos1-7)
    (adj-car pos1-7 pos1-5)
    (adj-car pos1-5 pos1-8)
    (adj-car pos1-8 pos1-5)
    (adj-car pos1-5 pos2-5)
    (adj-car pos2-5 pos1-5)
    (adj-walk pos1-6 pos1-7)
    (adj-walk pos1-7 pos1-6)
    (adj-walk pos1-6 pos2-6)
    (adj-walk pos2-6 pos1-6)
    (adj-car pos1-6 pos1-7)
    (adj-car pos1-7 pos1-6)
    (adj-car pos1-6 pos1-8)
    (adj-car pos1-8 pos1-6)
    (adj-car pos1-6 pos1-9)
    (adj-car pos1-9 pos1-6)
    (adj-car pos1-6 pos2-6)
    (adj-car pos2-6 pos1-6)
    (adj-car pos1-6 pos3-6)
    (adj-car pos3-6 pos1-6)
    (adj-walk pos1-7 pos1-8)
    (adj-walk pos1-8 pos1-7)
    (adj-walk pos1-7 pos2-7)
    (adj-walk pos2-7 pos1-7)
    (adj-car pos1-7 pos1-8)
    (adj-car pos1-8 pos1-7)
    (adj-car pos1-7 pos1-9)
    (adj-car pos1-9 pos1-7)
    (adj-car pos1-7 pos1-10)
    (adj-car pos1-10 pos1-7)
    (adj-car pos1-7 pos2-7)
    (adj-car pos2-7 pos1-7)
    (adj-walk pos1-8 pos1-9)
    (adj-walk pos1-9 pos1-8)
    (adj-walk pos1-8 pos2-8)
    (adj-walk pos2-8 pos1-8)
    (adj-car pos1-8 pos1-9)
    (adj-car pos1-9 pos1-8)
    (adj-car pos1-8 pos1-10)
    (adj-car pos1-10 pos1-8)
    (adj-car pos1-8 pos1-11)
    (adj-car pos1-11 pos1-8)
    (adj-car pos1-8 pos2-8)
    (adj-car pos2-8 pos1-8)
    (adj-walk pos1-9 pos1-10)
    (adj-walk pos1-10 pos1-9)
    (adj-walk pos1-9 pos2-9)
    (adj-walk pos2-9 pos1-9)
    (adj-car pos1-9 pos1-10)
    (adj-car pos1-10 pos1-9)
    (adj-car pos1-9 pos1-11)
    (adj-car pos1-11 pos1-9)
    (adj-car pos1-9 pos2-9)
    (adj-car pos2-9 pos1-9)
    (adj-car pos1-9 pos3-9)
    (adj-car pos3-9 pos1-9)
    (adj-walk pos1-10 pos1-11)
    (adj-walk pos1-11 pos1-10)
    (adj-car pos1-10 pos1-11)
    (adj-car pos1-11 pos1-10)
    (adj-walk pos1-11 pos2-11)
    (adj-walk pos2-11 pos1-11)
    (adj-car pos1-11 pos2-11)
    (adj-car pos2-11 pos1-11)
    (adj-car pos1-11 pos3-11)
    (adj-car pos3-11 pos1-11)
    (adj-walk pos2-3 pos2-4)
    (adj-walk pos2-4 pos2-3)
    (adj-walk pos2-3 pos3-3)
    (adj-walk pos3-3 pos2-3)
    (adj-car pos2-3 pos2-4)
    (adj-car pos2-4 pos2-3)
    (adj-car pos2-3 pos2-5)
    (adj-car pos2-5 pos2-3)
    (adj-car pos2-3 pos2-6)
    (adj-car pos2-6 pos2-3)
    (adj-car pos2-3 pos3-3)
    (adj-car pos3-3 pos2-3)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-walk pos2-4 pos3-4)
    (adj-walk pos3-4 pos2-4)
    (adj-car pos2-4 pos2-5)
    (adj-car pos2-5 pos2-4)
    (adj-car pos2-4 pos2-6)
    (adj-car pos2-6 pos2-4)
    (adj-car pos2-4 pos2-7)
    (adj-car pos2-7 pos2-4)
    (adj-car pos2-4 pos3-4)
    (adj-car pos3-4 pos2-4)
    (adj-walk pos2-5 pos2-6)
    (adj-walk pos2-6 pos2-5)
    (adj-car pos2-5 pos2-6)
    (adj-car pos2-6 pos2-5)
    (adj-car pos2-5 pos2-7)
    (adj-car pos2-7 pos2-5)
    (adj-car pos2-5 pos2-8)
    (adj-car pos2-8 pos2-5)
    (adj-walk pos2-6 pos2-7)
    (adj-walk pos2-7 pos2-6)
    (adj-walk pos2-6 pos3-6)
    (adj-walk pos3-6 pos2-6)
    (adj-car pos2-6 pos2-7)
    (adj-car pos2-7 pos2-6)
    (adj-car pos2-6 pos2-8)
    (adj-car pos2-8 pos2-6)
    (adj-car pos2-6 pos2-9)
    (adj-car pos2-9 pos2-6)
    (adj-car pos2-6 pos3-6)
    (adj-car pos3-6 pos2-6)
    (adj-walk pos2-7 pos2-8)
    (adj-walk pos2-8 pos2-7)
    (adj-car pos2-7 pos2-8)
    (adj-car pos2-8 pos2-7)
    (adj-car pos2-7 pos2-9)
    (adj-car pos2-9 pos2-7)
    (adj-walk pos2-8 pos2-9)
    (adj-walk pos2-9 pos2-8)
    (adj-car pos2-8 pos2-9)
    (adj-car pos2-9 pos2-8)
    (adj-walk pos2-9 pos3-9)
    (adj-walk pos3-9 pos2-9)
    (adj-car pos2-9 pos3-9)
    (adj-car pos3-9 pos2-9)
    (adj-walk pos2-11 pos3-11)
    (adj-walk pos3-11 pos2-11)
    (adj-car pos2-11 pos3-11)
    (adj-car pos3-11 pos2-11)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-car pos3-2 pos3-3)
    (adj-car pos3-3 pos3-2)
    (adj-car pos3-2 pos3-4)
    (adj-car pos3-4 pos3-2)
    (adj-walk pos3-3 pos3-4)
    (adj-walk pos3-4 pos3-3)
    (adj-car pos3-3 pos3-4)
    (adj-car pos3-4 pos3-3)
    (at-car car0 pos2-8)
    (free car0)
    (at-supporter pos3-9)
    (at-prime pos3-11)
)

(:goal
  (and
    (at-prime pos0-3)
  )
)
(:metric minimize (total-cost))
)

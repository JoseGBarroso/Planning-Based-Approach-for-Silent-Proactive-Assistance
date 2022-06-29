(define (problem joint_car-assistance1_problem_16)
(:domain joint_car-assistance1_domain)
(:objects
    pos0-0 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos0-8 pos0-9 pos0-10 pos0-11 pos0-13 pos1-2 pos1-4 pos1-9 pos1-11 pos1-13 pos1-14 pos2-0 pos2-1 pos2-2 pos2-4 pos2-5 pos2-7 pos2-8 pos2-9 pos2-12 pos2-13 pos2-14 pos3-0 pos3-1 pos3-2 pos3-3 pos3-6 pos3-9 pos3-10 pos3-11 pos3-13 pos3-14 - place
    car0 - car
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-walk pos0-2 pos1-2)
    (adj-walk pos1-2 pos0-2)
    (adj-car pos0-2 pos0-3)
    (adj-car pos0-3 pos0-2)
    (adj-car pos0-2 pos0-4)
    (adj-car pos0-4 pos0-2)
    (adj-car pos0-2 pos0-5)
    (adj-car pos0-5 pos0-2)
    (adj-car pos0-2 pos1-2)
    (adj-car pos1-2 pos0-2)
    (adj-car pos0-2 pos2-2)
    (adj-car pos2-2 pos0-2)
    (adj-car pos0-2 pos3-2)
    (adj-car pos3-2 pos0-2)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-car pos0-3 pos0-4)
    (adj-car pos0-4 pos0-3)
    (adj-car pos0-3 pos0-5)
    (adj-car pos0-5 pos0-3)
    (adj-car pos0-3 pos0-6)
    (adj-car pos0-6 pos0-3)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-walk pos0-4 pos1-4)
    (adj-walk pos1-4 pos0-4)
    (adj-car pos0-4 pos0-5)
    (adj-car pos0-5 pos0-4)
    (adj-car pos0-4 pos0-6)
    (adj-car pos0-6 pos0-4)
    (adj-car pos0-4 pos0-7)
    (adj-car pos0-7 pos0-4)
    (adj-car pos0-4 pos1-4)
    (adj-car pos1-4 pos0-4)
    (adj-car pos0-4 pos2-4)
    (adj-car pos2-4 pos0-4)
    (adj-walk pos0-5 pos0-6)
    (adj-walk pos0-6 pos0-5)
    (adj-car pos0-5 pos0-6)
    (adj-car pos0-6 pos0-5)
    (adj-car pos0-5 pos0-7)
    (adj-car pos0-7 pos0-5)
    (adj-car pos0-5 pos0-8)
    (adj-car pos0-8 pos0-5)
    (adj-walk pos0-6 pos0-7)
    (adj-walk pos0-7 pos0-6)
    (adj-car pos0-6 pos0-7)
    (adj-car pos0-7 pos0-6)
    (adj-car pos0-6 pos0-8)
    (adj-car pos0-8 pos0-6)
    (adj-car pos0-6 pos0-9)
    (adj-car pos0-9 pos0-6)
    (adj-walk pos0-7 pos0-8)
    (adj-walk pos0-8 pos0-7)
    (adj-car pos0-7 pos0-8)
    (adj-car pos0-8 pos0-7)
    (adj-car pos0-7 pos0-9)
    (adj-car pos0-9 pos0-7)
    (adj-car pos0-7 pos0-10)
    (adj-car pos0-10 pos0-7)
    (adj-walk pos0-8 pos0-9)
    (adj-walk pos0-9 pos0-8)
    (adj-car pos0-8 pos0-9)
    (adj-car pos0-9 pos0-8)
    (adj-car pos0-8 pos0-10)
    (adj-car pos0-10 pos0-8)
    (adj-car pos0-8 pos0-11)
    (adj-car pos0-11 pos0-8)
    (adj-walk pos0-9 pos0-10)
    (adj-walk pos0-10 pos0-9)
    (adj-walk pos0-9 pos1-9)
    (adj-walk pos1-9 pos0-9)
    (adj-car pos0-9 pos0-10)
    (adj-car pos0-10 pos0-9)
    (adj-car pos0-9 pos0-11)
    (adj-car pos0-11 pos0-9)
    (adj-car pos0-9 pos1-9)
    (adj-car pos1-9 pos0-9)
    (adj-car pos0-9 pos2-9)
    (adj-car pos2-9 pos0-9)
    (adj-car pos0-9 pos3-9)
    (adj-car pos3-9 pos0-9)
    (adj-walk pos0-10 pos0-11)
    (adj-walk pos0-11 pos0-10)
    (adj-car pos0-10 pos0-11)
    (adj-car pos0-11 pos0-10)
    (adj-walk pos0-11 pos1-11)
    (adj-walk pos1-11 pos0-11)
    (adj-car pos0-11 pos1-11)
    (adj-car pos1-11 pos0-11)
    (adj-walk pos0-13 pos1-13)
    (adj-walk pos1-13 pos0-13)
    (adj-car pos0-13 pos1-13)
    (adj-car pos1-13 pos0-13)
    (adj-car pos0-13 pos2-13)
    (adj-car pos2-13 pos0-13)
    (adj-car pos0-13 pos3-13)
    (adj-car pos3-13 pos0-13)
    (adj-walk pos1-2 pos2-2)
    (adj-walk pos2-2 pos1-2)
    (adj-car pos1-2 pos2-2)
    (adj-car pos2-2 pos1-2)
    (adj-car pos1-2 pos3-2)
    (adj-car pos3-2 pos1-2)
    (adj-walk pos1-4 pos2-4)
    (adj-walk pos2-4 pos1-4)
    (adj-car pos1-4 pos2-4)
    (adj-car pos2-4 pos1-4)
    (adj-walk pos1-9 pos2-9)
    (adj-walk pos2-9 pos1-9)
    (adj-car pos1-9 pos2-9)
    (adj-car pos2-9 pos1-9)
    (adj-car pos1-9 pos3-9)
    (adj-car pos3-9 pos1-9)
    (adj-walk pos1-13 pos1-14)
    (adj-walk pos1-14 pos1-13)
    (adj-walk pos1-13 pos2-13)
    (adj-walk pos2-13 pos1-13)
    (adj-car pos1-13 pos1-14)
    (adj-car pos1-14 pos1-13)
    (adj-car pos1-13 pos2-13)
    (adj-car pos2-13 pos1-13)
    (adj-car pos1-13 pos3-13)
    (adj-car pos3-13 pos1-13)
    (adj-walk pos1-14 pos2-14)
    (adj-walk pos2-14 pos1-14)
    (adj-car pos1-14 pos2-14)
    (adj-car pos2-14 pos1-14)
    (adj-car pos1-14 pos3-14)
    (adj-car pos3-14 pos1-14)
    (adj-walk pos2-0 pos2-1)
    (adj-walk pos2-1 pos2-0)
    (adj-walk pos2-0 pos3-0)
    (adj-walk pos3-0 pos2-0)
    (adj-car pos2-0 pos2-1)
    (adj-car pos2-1 pos2-0)
    (adj-car pos2-0 pos2-2)
    (adj-car pos2-2 pos2-0)
    (adj-car pos2-0 pos3-0)
    (adj-car pos3-0 pos2-0)
    (adj-walk pos2-1 pos2-2)
    (adj-walk pos2-2 pos2-1)
    (adj-walk pos2-1 pos3-1)
    (adj-walk pos3-1 pos2-1)
    (adj-car pos2-1 pos2-2)
    (adj-car pos2-2 pos2-1)
    (adj-car pos2-1 pos3-1)
    (adj-car pos3-1 pos2-1)
    (adj-walk pos2-2 pos3-2)
    (adj-walk pos3-2 pos2-2)
    (adj-car pos2-2 pos3-2)
    (adj-car pos3-2 pos2-2)
    (adj-walk pos2-4 pos2-5)
    (adj-walk pos2-5 pos2-4)
    (adj-car pos2-4 pos2-5)
    (adj-car pos2-5 pos2-4)
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
    (adj-walk pos2-12 pos2-13)
    (adj-walk pos2-13 pos2-12)
    (adj-car pos2-12 pos2-13)
    (adj-car pos2-13 pos2-12)
    (adj-car pos2-12 pos2-14)
    (adj-car pos2-14 pos2-12)
    (adj-walk pos2-13 pos2-14)
    (adj-walk pos2-14 pos2-13)
    (adj-walk pos2-13 pos3-13)
    (adj-walk pos3-13 pos2-13)
    (adj-car pos2-13 pos2-14)
    (adj-car pos2-14 pos2-13)
    (adj-car pos2-13 pos3-13)
    (adj-car pos3-13 pos2-13)
    (adj-walk pos2-14 pos3-14)
    (adj-walk pos3-14 pos2-14)
    (adj-car pos2-14 pos3-14)
    (adj-car pos3-14 pos2-14)
    (adj-walk pos3-0 pos3-1)
    (adj-walk pos3-1 pos3-0)
    (adj-car pos3-0 pos3-1)
    (adj-car pos3-1 pos3-0)
    (adj-car pos3-0 pos3-2)
    (adj-car pos3-2 pos3-0)
    (adj-car pos3-0 pos3-3)
    (adj-car pos3-3 pos3-0)
    (adj-walk pos3-1 pos3-2)
    (adj-walk pos3-2 pos3-1)
    (adj-car pos3-1 pos3-2)
    (adj-car pos3-2 pos3-1)
    (adj-car pos3-1 pos3-3)
    (adj-car pos3-3 pos3-1)
    (adj-walk pos3-2 pos3-3)
    (adj-walk pos3-3 pos3-2)
    (adj-car pos3-2 pos3-3)
    (adj-car pos3-3 pos3-2)
    (adj-walk pos3-9 pos3-10)
    (adj-walk pos3-10 pos3-9)
    (adj-car pos3-9 pos3-10)
    (adj-car pos3-10 pos3-9)
    (adj-car pos3-9 pos3-11)
    (adj-car pos3-11 pos3-9)
    (adj-walk pos3-10 pos3-11)
    (adj-walk pos3-11 pos3-10)
    (adj-car pos3-10 pos3-11)
    (adj-car pos3-11 pos3-10)
    (adj-walk pos3-13 pos3-14)
    (adj-walk pos3-14 pos3-13)
    (adj-car pos3-13 pos3-14)
    (adj-car pos3-14 pos3-13)
    (at-car car0 pos0-11)
    (free car0)
    (at-supporter pos0-9)
    (at-prime pos2-8)
)

(:goal
  (and
    (at-prime pos0-2)
  )
)
(:metric minimize (total-cost))
)
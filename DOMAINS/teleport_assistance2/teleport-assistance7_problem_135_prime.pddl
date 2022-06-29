(define (problem teleport-assistance7_problem_135_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-5 pos0-6 pos0-9 pos1-0 pos1-1 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos1-9 pos2-0 pos2-1 pos2-2 pos2-5 pos2-6 pos2-7 pos2-8 pos2-9 pos3-0 pos3-1 pos3-3 pos3-4 pos3-6 pos3-7 pos3-8 pos3-9 pos4-0 pos4-3 pos4-5 pos4-6 pos5-2 pos5-4 pos5-7 pos5-8 pos5-9  - place)

  (:init
    (adj-walk pos0-0 pos0-1 )
    (adj-walk pos0-1 pos0-0 )
    (adj-walk pos0-0 pos1-0 )
    (adj-walk pos1-0 pos0-0 )
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos0-5 pos0-6 )
    (adj-walk pos0-6 pos0-5 )
    (adj-walk pos0-5 pos1-5 )
    (adj-walk pos1-5 pos0-5 )
    (adj-walk pos0-6 pos1-6 )
    (adj-walk pos1-6 pos0-6 )
    (adj-walk pos0-9 pos1-9 )
    (adj-walk pos1-9 pos0-9 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-0 pos2-0 )
    (adj-walk pos2-0 pos1-0 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-walk pos1-5 pos1-6 )
    (adj-walk pos1-6 pos1-5 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-walk pos1-6 pos1-7 )
    (adj-walk pos1-7 pos1-6 )
    (adj-walk pos1-6 pos2-6 )
    (adj-walk pos2-6 pos1-6 )
    (adj-walk pos1-7 pos1-8 )
    (adj-walk pos1-8 pos1-7 )
    (adj-walk pos1-7 pos2-7 )
    (adj-walk pos2-7 pos1-7 )
    (adj-walk pos1-8 pos1-9 )
    (adj-walk pos1-9 pos1-8 )
    (adj-walk pos1-8 pos2-8 )
    (adj-walk pos2-8 pos1-8 )
    (adj-walk pos1-9 pos2-9 )
    (adj-walk pos2-9 pos1-9 )
    (adj-walk pos2-0 pos2-1 )
    (adj-walk pos2-1 pos2-0 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-walk pos2-6 pos2-7 )
    (adj-walk pos2-7 pos2-6 )
    (adj-walk pos2-6 pos3-6 )
    (adj-walk pos3-6 pos2-6 )
    (adj-walk pos2-7 pos2-8 )
    (adj-walk pos2-8 pos2-7 )
    (adj-walk pos2-7 pos3-7 )
    (adj-walk pos3-7 pos2-7 )
    (adj-walk pos2-8 pos2-9 )
    (adj-walk pos2-9 pos2-8 )
    (adj-walk pos2-8 pos3-8 )
    (adj-walk pos3-8 pos2-8 )
    (adj-walk pos2-9 pos3-9 )
    (adj-walk pos3-9 pos2-9 )
    (adj-walk pos3-0 pos3-1 )
    (adj-walk pos3-1 pos3-0 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-3 pos3-4 )
    (adj-walk pos3-4 pos3-3 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos3-6 pos3-7 )
    (adj-walk pos3-7 pos3-6 )
    (adj-walk pos3-6 pos4-6 )
    (adj-walk pos4-6 pos3-6 )
    (adj-walk pos3-7 pos3-8 )
    (adj-walk pos3-8 pos3-7 )
    (adj-walk pos3-8 pos3-9 )
    (adj-walk pos3-9 pos3-8 )
    (adj-walk pos4-5 pos4-6 )
    (adj-walk pos4-6 pos4-5 )
    (adj-walk pos5-7 pos5-8 )
    (adj-walk pos5-8 pos5-7 )
    (adj-walk pos5-8 pos5-9 )
    (adj-walk pos5-9 pos5-8 )

    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-5)
    (free pos0-6)
    (free pos0-9)
    (free pos1-0)
    (free pos1-1)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos1-6)
    (free pos1-7)
    (free pos1-8)
    (free pos1-9)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-5)
    (free pos2-6)
    (free pos2-7)
    (free pos2-8)
    (free pos2-9)
    (free pos3-0)
    (free pos3-1)
    (free pos3-3)
    (free pos3-4)
    (free pos3-6)
    (free pos3-7)
    (free pos3-8)
    (free pos3-9)
    (free pos4-0)
    (free pos4-3)
    (free pos4-5)
    (free pos4-6)
    (free pos5-2)
    (free pos5-4)
    (free pos5-7)
    (free pos5-8)
    (free pos5-9)

    (at-prime pos1-3)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos3-6)))
  (:metric minimize (total-cost))

)
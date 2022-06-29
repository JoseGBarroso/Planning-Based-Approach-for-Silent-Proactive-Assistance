(define (problem teleport-assistance7_problem_166_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-4 pos0-5 pos0-7 pos0-8 pos1-0 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos2-0 pos2-1 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos3-1 pos3-2 pos3-3 pos3-5 pos3-6 pos3-7 pos3-8 pos4-0 pos4-1 pos4-3 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8  - place)

  (:init
    (adj-walk pos0-0 pos0-1 )
    (adj-walk pos0-1 pos0-0 )
    (adj-walk pos0-0 pos1-0 )
    (adj-walk pos1-0 pos0-0 )
    (adj-walk pos0-3 pos0-4 )
    (adj-walk pos0-4 pos0-3 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos0-4 pos0-5 )
    (adj-walk pos0-5 pos0-4 )
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-walk pos0-5 pos1-5 )
    (adj-walk pos1-5 pos0-5 )
    (adj-walk pos0-7 pos0-8 )
    (adj-walk pos0-8 pos0-7 )
    (adj-walk pos0-7 pos1-7 )
    (adj-walk pos1-7 pos0-7 )
    (adj-walk pos1-0 pos2-0 )
    (adj-walk pos2-0 pos1-0 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-walk pos1-4 pos2-4 )
    (adj-walk pos2-4 pos1-4 )
    (adj-walk pos1-5 pos1-6 )
    (adj-walk pos1-6 pos1-5 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-walk pos1-6 pos1-7 )
    (adj-walk pos1-7 pos1-6 )
    (adj-walk pos1-6 pos2-6 )
    (adj-walk pos2-6 pos1-6 )
    (adj-walk pos1-7 pos2-7 )
    (adj-walk pos2-7 pos1-7 )
    (adj-walk pos2-0 pos2-1 )
    (adj-walk pos2-1 pos2-0 )
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos2-3 pos2-4 )
    (adj-walk pos2-4 pos2-3 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-walk pos2-5 pos3-5 )
    (adj-walk pos3-5 pos2-5 )
    (adj-walk pos2-6 pos2-7 )
    (adj-walk pos2-7 pos2-6 )
    (adj-walk pos2-6 pos3-6 )
    (adj-walk pos3-6 pos2-6 )
    (adj-walk pos2-7 pos2-8 )
    (adj-walk pos2-8 pos2-7 )
    (adj-walk pos2-7 pos3-7 )
    (adj-walk pos3-7 pos2-7 )
    (adj-walk pos2-8 pos3-8 )
    (adj-walk pos3-8 pos2-8 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos3-5 pos3-6 )
    (adj-walk pos3-6 pos3-5 )
    (adj-walk pos3-5 pos4-5 )
    (adj-walk pos4-5 pos3-5 )
    (adj-walk pos3-6 pos3-7 )
    (adj-walk pos3-7 pos3-6 )
    (adj-walk pos3-6 pos4-6 )
    (adj-walk pos4-6 pos3-6 )
    (adj-walk pos3-7 pos3-8 )
    (adj-walk pos3-8 pos3-7 )
    (adj-walk pos3-7 pos4-7 )
    (adj-walk pos4-7 pos3-7 )
    (adj-walk pos3-8 pos4-8 )
    (adj-walk pos4-8 pos3-8 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-4 pos4-5 )
    (adj-walk pos4-5 pos4-4 )
    (adj-walk pos4-5 pos4-6 )
    (adj-walk pos4-6 pos4-5 )
    (adj-walk pos4-6 pos4-7 )
    (adj-walk pos4-7 pos4-6 )
    (adj-walk pos4-7 pos4-8 )
    (adj-walk pos4-8 pos4-7 )

    (free pos0-0)
    (free pos0-1)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos0-7)
    (free pos0-8)
    (free pos1-0)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos1-6)
    (free pos1-7)
    (free pos2-0)
    (free pos2-1)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos2-7)
    (free pos2-8)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-5)
    (free pos3-6)
    (free pos3-7)
    (free pos3-8)
    (free pos4-0)
    (free pos4-1)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)
    (free pos4-6)
    (free pos4-7)
    (free pos4-8)

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos3-5)))
  (:metric minimize (total-cost))

)
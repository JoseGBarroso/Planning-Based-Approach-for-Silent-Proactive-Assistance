(define (problem teleport-assistance7_problem_0_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-1 pos0-6 pos1-0 pos1-1 pos1-2 pos1-5 pos1-6 pos1-8 pos2-1 pos2-2 pos2-4 pos2-5 pos3-2 pos3-4 pos3-9 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5  - place)

  (:init
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-walk pos0-6 pos1-6 )
    (adj-walk pos1-6 pos0-6 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos1-5 pos1-6 )
    (adj-walk pos1-6 pos1-5 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-4 pos3-4 )
    (adj-walk pos3-4 pos2-4 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-4 pos4-5 )
    (adj-walk pos4-5 pos4-4 )

    (free pos0-1)
    (free pos0-6)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-5)
    (free pos1-6)
    (free pos1-8)
    (free pos2-1)
    (free pos2-2)
    (free pos2-4)
    (free pos2-5)
    (free pos3-2)
    (free pos3-4)
    (free pos3-9)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)

    (at-prime pos1-5)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos0-1)))
  (:metric minimize (total-cost))

)
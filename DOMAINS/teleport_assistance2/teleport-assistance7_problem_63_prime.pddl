(define (problem teleport-assistance7_problem_63_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos3-1 pos3-2 pos3-4 pos3-5 pos3-6 pos3-7  - place)

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
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-walk pos0-3 pos0-4 )
    (adj-walk pos0-4 pos0-3 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos0-4 pos0-5 )
    (adj-walk pos0-5 pos0-4 )
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-walk pos0-5 pos0-6 )
    (adj-walk pos0-6 pos0-5 )
    (adj-walk pos0-6 pos0-7 )
    (adj-walk pos0-7 pos0-6 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-2 pos1-3 )
    (adj-walk pos1-3 pos1-2 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos1-4 pos2-4 )
    (adj-walk pos2-4 pos1-4 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos2-3 pos2-4 )
    (adj-walk pos2-4 pos2-3 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-4 pos3-4 )
    (adj-walk pos3-4 pos2-4 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-walk pos2-5 pos3-5 )
    (adj-walk pos3-5 pos2-5 )
    (adj-walk pos2-6 pos3-6 )
    (adj-walk pos3-6 pos2-6 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )
    (adj-walk pos3-4 pos3-5 )
    (adj-walk pos3-5 pos3-4 )
    (adj-walk pos3-5 pos3-6 )
    (adj-walk pos3-6 pos3-5 )
    (adj-walk pos3-6 pos3-7 )
    (adj-walk pos3-7 pos3-6 )

    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos0-6)
    (free pos0-7)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos3-1)
    (free pos3-2)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)
    (free pos3-7)

    (at-prime pos3-1)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos0-4)))
  (:metric minimize (total-cost))

)
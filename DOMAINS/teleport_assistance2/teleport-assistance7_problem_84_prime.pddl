(define (problem teleport-assistance7_problem_84_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-1 pos0-3 pos0-4 pos0-6 pos0-8 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos2-0 pos2-2 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos3-0 pos3-4 pos3-6 pos3-7 pos4-0 pos4-2 pos4-6 pos4-7 pos5-1 pos5-2 pos5-4 pos5-5 pos5-7 pos6-1 pos6-2 pos6-7 pos6-8 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos7-5 pos7-7 pos7-8  - place)

  (:init
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-walk pos0-3 pos0-4 )
    (adj-walk pos0-4 pos0-3 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-walk pos0-6 pos1-6 )
    (adj-walk pos1-6 pos0-6 )
    (adj-walk pos0-8 pos1-8 )
    (adj-walk pos1-8 pos0-8 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-0 pos2-0 )
    (adj-walk pos2-0 pos1-0 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-2 pos1-3 )
    (adj-walk pos1-3 pos1-2 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
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
    (adj-walk pos1-7 pos1-8 )
    (adj-walk pos1-8 pos1-7 )
    (adj-walk pos1-7 pos2-7 )
    (adj-walk pos2-7 pos1-7 )
    (adj-walk pos1-8 pos2-8 )
    (adj-walk pos2-8 pos1-8 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-4 pos3-4 )
    (adj-walk pos3-4 pos2-4 )
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
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-6 pos3-7 )
    (adj-walk pos3-7 pos3-6 )
    (adj-walk pos3-6 pos4-6 )
    (adj-walk pos4-6 pos3-6 )
    (adj-walk pos3-7 pos4-7 )
    (adj-walk pos4-7 pos3-7 )
    (adj-walk pos4-2 pos5-2 )
    (adj-walk pos5-2 pos4-2 )
    (adj-walk pos4-6 pos4-7 )
    (adj-walk pos4-7 pos4-6 )
    (adj-walk pos4-7 pos5-7 )
    (adj-walk pos5-7 pos4-7 )
    (adj-walk pos5-1 pos5-2 )
    (adj-walk pos5-2 pos5-1 )
    (adj-walk pos5-1 pos6-1 )
    (adj-walk pos6-1 pos5-1 )
    (adj-walk pos5-2 pos6-2 )
    (adj-walk pos6-2 pos5-2 )
    (adj-walk pos5-4 pos5-5 )
    (adj-walk pos5-5 pos5-4 )
    (adj-walk pos5-7 pos6-7 )
    (adj-walk pos6-7 pos5-7 )
    (adj-walk pos6-1 pos6-2 )
    (adj-walk pos6-2 pos6-1 )
    (adj-walk pos6-1 pos7-1 )
    (adj-walk pos7-1 pos6-1 )
    (adj-walk pos6-2 pos7-2 )
    (adj-walk pos7-2 pos6-2 )
    (adj-walk pos6-7 pos6-8 )
    (adj-walk pos6-8 pos6-7 )
    (adj-walk pos6-7 pos7-7 )
    (adj-walk pos7-7 pos6-7 )
    (adj-walk pos6-8 pos7-8 )
    (adj-walk pos7-8 pos6-8 )
    (adj-walk pos7-0 pos7-1 )
    (adj-walk pos7-1 pos7-0 )
    (adj-walk pos7-1 pos7-2 )
    (adj-walk pos7-2 pos7-1 )
    (adj-walk pos7-2 pos7-3 )
    (adj-walk pos7-3 pos7-2 )
    (adj-walk pos7-3 pos7-4 )
    (adj-walk pos7-4 pos7-3 )
    (adj-walk pos7-4 pos7-5 )
    (adj-walk pos7-5 pos7-4 )
    (adj-walk pos7-7 pos7-8 )
    (adj-walk pos7-8 pos7-7 )

    (free pos0-1)
    (free pos0-3)
    (free pos0-4)
    (free pos0-6)
    (free pos0-8)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos1-6)
    (free pos1-7)
    (free pos1-8)
    (free pos2-0)
    (free pos2-2)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos2-7)
    (free pos2-8)
    (free pos3-0)
    (free pos3-4)
    (free pos3-6)
    (free pos3-7)
    (free pos4-0)
    (free pos4-2)
    (free pos4-6)
    (free pos4-7)
    (free pos5-1)
    (free pos5-2)
    (free pos5-4)
    (free pos5-5)
    (free pos5-7)
    (free pos6-1)
    (free pos6-2)
    (free pos6-7)
    (free pos6-8)
    (free pos7-0)
    (free pos7-1)
    (free pos7-2)
    (free pos7-3)
    (free pos7-4)
    (free pos7-5)
    (free pos7-7)
    (free pos7-8)

    (at-prime pos6-8)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos3-6)))
  (:metric minimize (total-cost))

)
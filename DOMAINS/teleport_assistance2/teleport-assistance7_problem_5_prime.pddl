(define (problem teleport-assistance7_problem_5_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-2 pos2-4 pos3-4 pos3-5 pos3-6 pos4-2 pos4-5  - place)

  (:init
    (adj-walk pos2-4 pos3-4 )
    (adj-walk pos3-4 pos2-4 )
    (adj-walk pos3-4 pos3-5 )
    (adj-walk pos3-5 pos3-4 )
    (adj-walk pos3-5 pos3-6 )
    (adj-walk pos3-6 pos3-5 )
    (adj-walk pos3-5 pos4-5 )
    (adj-walk pos4-5 pos3-5 )

    (free pos0-2)
    (free pos2-4)
    (free pos3-4)
    (free pos3-5)
    (free pos3-6)
    (free pos4-2)
    (free pos4-5)

    (at-prime pos4-5)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos2-4)))
  (:metric minimize (total-cost))

)
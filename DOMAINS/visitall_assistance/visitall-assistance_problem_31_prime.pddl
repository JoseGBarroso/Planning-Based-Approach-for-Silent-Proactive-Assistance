(define (problem visitall-assistance_problem_31_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node3)
    (connected node2 node3)
    (connected node3 node4)
    (connected node4 node2)
    (connected node4 node5)

    (at-prime node2)
    (visited node2)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node1)
    (visited node3)
    (visited node4)
    (visited node5)
  ))
  (:metric minimize (total-cost))

)
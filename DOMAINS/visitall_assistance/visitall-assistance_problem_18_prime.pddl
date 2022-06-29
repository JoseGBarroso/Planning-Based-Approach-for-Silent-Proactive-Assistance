(define (problem visitall-assistance_problem_18_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7  - place)
    

  (:init
    (connected node1 node2)
    (connected node2 node3)
    (connected node3 node4)
    (connected node5 node6)
    (connected node6 node7)

    (at-prime node7)
    (visited node7)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node1)
    (visited node2)
    (visited node3)
    (visited node4)
    (visited node5)
    (visited node6)
  ))
  (:metric minimize (total-cost))

)
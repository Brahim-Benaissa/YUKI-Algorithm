# YUKI-Algorithm

YUKI algorithm is a metaheuristic search algorithm that suggests thea principle of dynamic search space 
reduction. By creating a local search area around the absolute best solution found so far. The algorithm 
adapts the size of the search areadynamically throughout the progress of the search, using the distance 
between two points as a reference.
The first point is the absolute best point. It corresponds to the minimum fitness value. Furthermore,
The second point is called MeanBest. We calculate this point as the center of the “best points” could.
The best points here are the best solutions found so far by each member of the YA population.

The following expression calculates the local boundaries:
𝐷 = |𝑋𝑏𝑒𝑠𝑡 − 𝑋𝑀𝑒𝑎𝑛𝐵𝑒𝑠𝑡| (1)
𝑳𝑻 = 𝑋𝑏𝑒𝑠𝑡 + 𝐷 (2)
𝑳𝑩 = 𝑋𝑏𝑒𝑠𝑡 − 𝐷 (3)
Respectively 𝑳𝑻 and 𝑳𝑩 are the Local top and bottom boundaries of the local search space.
Furthermore 𝑿𝒃𝒆𝒔𝒕 Is the point corresponding to the absolute best fitness value at the current iteration.
And the term 𝑿𝑴𝒆𝒂𝒏𝑩𝒆𝒔𝒕 is the mean of the Best Points vector.

The second concept is to create a random distribution of points 𝑿𝒍𝒐𝒄 Inside the local search area, split
the search into two parts; One part of the population to explore outside the local search area. The other
is assigned to focus on searching around the center of the search area. The size of the exploration
population changes iteratively in this manner:
𝑖𝑓 𝑟𝑎𝑛𝑑 < 0.5
Eq. 4 condition compares the randomly generated value, between 0 and 1, to the output of the Eq. 4
expression, which is also between 0 and 1. 𝑲 is the current iteration and 𝑲𝒎𝒂𝒙 Represent the value of
maximum iteration set initially as a stopping criterion. At early iterations, the output corresponds to a
high possibility for the “if statement” to be True, and at late iterations, this possibility decreases linearly.
This way, we assign most of the population toward exploring initially, then slowly shift toward
exploitation.
Exploration population look in the direction away from the MeanBest expressed as follows:
𝐸 = 𝑋𝑙𝑜𝑐 −  × 𝑋𝐵𝑒𝑠𝑡 (5)
Where 𝒓𝒂𝒏𝒅𝒊(𝟏𝟎) is a random integer between 1 and 10, the following equation calculates the new
solutions:
𝑋𝑛𝑒𝑤 = 𝑋𝑙𝑜𝑐 +  𝐸 (6)
“rand” here stands for a random value between 0 and 1. Note here that we use the same random value
for all design variables.
The rest of the population, not assigned to exploration, is pushed to search around the local area
center. The following equation governs this process:
𝑭 = 𝑋𝑙𝑜𝑐 − 𝑋𝑏𝑒𝑠𝑡 (7)
𝑋𝑛𝑒𝑤 = 𝑋𝑙𝑜𝑐 + 𝑟𝑎𝑛𝑑 × 𝑭 (8)
Where 𝑭 is the distance between the selected local point to the absolute best solution, similarly, rand
here is the random value between 0 and 1. Note also here that we use the same random value for all
design variables.
 
We update the absolute best solution and the individual best solutions at the end of each iteration.
For details, 
In this study of crack identification, the fitness function is:
 
{ 𝑓(𝑷) = ‖𝒖(𝑷0)− 𝒖(𝑷)‖2
‖𝒖(𝑷0)‖2
𝑓(𝑷𝑜𝑝𝑡𝑖𝑚𝑎𝑙) = 𝑚𝑖𝑛 [𝑓(𝑷)]
(9)
Where the response vectors 𝐮(𝐏) of the suggested cracks is compared to the reference response
𝐮(𝐏0) That was caused by the unknown crack.
The following points discuss the theory of the suggested algorithm.
• By exporting new areas situated away from the MeanBest point, we focus the exploration
effort in one direction, which increases the possibility of finding new solutions compared to
randomly exploring the global area.
• By multiplying the MeanBest value to a random integer, we create a pulsating effect,
essential for suggesting different solutions in every iteration. It also helps extend the reach
of the search.
• As long as there is good coverage of the global search space, the distance between Best
Points remains safely large. Thus the local search area avoids collapsing on a local optimum.
• The search area sizes are independent across search dimensions. Because this algorithm can
create variations for which the local search area is significant in one dimension and very
small in another dimension. Thus the search focus is reacting to the sensitivity of each design
variable.
• The local search area's size can increase dynamically if the algorithm finds a new best
solution far from the current local search area.
• As solutions converge to the optimum, the local search area gets smaller,
Yuki algorithm pseudo-code
𝐿𝑜𝑎𝑑 𝑡ℎ𝑒 𝑠𝑒𝑎𝑟𝑐ℎ 𝑝𝑎𝑟𝑎𝑚𝑒𝑡𝑒𝑟𝑠
𝐼𝑛𝑖𝑡𝑖𝑎𝑡𝑒 𝑡ℎ𝑒 𝑝𝑜𝑝𝑢𝑙𝑎𝑡𝑖𝑜𝑛 𝑋
𝐸𝑣𝑎𝑙𝑢𝑎𝑡𝑒 𝑡ℎ𝑒 𝑓𝑖𝑡𝑛𝑒𝑠𝑠
𝐶𝑎𝑙𝑐𝑢𝑙𝑎𝑡𝑒 𝑡ℎ𝑒 𝑋𝑀𝑒𝑎𝑛𝐵𝑒𝑠𝑡 𝑎𝑛𝑑 𝑋𝑏𝑒𝑠𝑡
𝒇𝒐𝒓 𝐾 = 1 𝑡𝑜 𝐾𝑚𝑎𝑥
𝐶𝑎𝑙𝑐𝑢𝑙𝑎𝑡𝑒 𝑡ℎ𝑒 𝑙𝑜𝑐𝑎𝑙 𝑏𝑜𝑢𝑛𝑑𝑎𝑟𝑖𝑒𝑠
𝐺𝑒𝑛𝑒𝑟𝑎𝑡𝑒 𝑡ℎ𝑒 𝑙𝑜𝑐𝑎𝑙 𝑝𝑜𝑝𝑢𝑙𝑎𝑡𝑖𝑜𝑛 𝑟𝑎𝑛𝑑𝑜𝑚𝑙𝑦
𝒊𝒇 𝑟𝑎𝑛𝑑 < 1 − 𝐾 /𝐾𝑚𝑎𝑥
𝐶𝑎𝑙𝑐𝑢𝑙𝑎𝑡𝑒 𝑡ℎ𝑒 𝑒𝑥𝑝𝑙𝑜𝑟𝑎𝑡𝑖𝑜𝑛 𝑠𝑜𝑙𝑢𝑡𝑖𝑜𝑛𝑠
𝒆𝒍𝒔𝒆
𝐶𝑎𝑙𝑐𝑢𝑙𝑎𝑡𝑒 𝑓𝑜𝑐𝑢𝑠 𝑠𝑜𝑙𝑢𝑡𝑖𝑜𝑛𝑠
𝒆𝒏𝒅
𝑢𝑝𝑑𝑎𝑡𝑒 𝑡ℎ𝑒 𝑋𝑀𝑒𝑎𝑛𝐵𝑒𝑠𝑡
𝑢𝑝𝑑𝑎𝑡𝑒 𝑡ℎ𝑒 𝑋𝑏𝑒𝑠𝑡 𝑖𝑓 𝑏𝑒𝑡𝑡𝑒𝑟 𝑠𝑜𝑙𝑢𝑡𝑖𝑜𝑛𝑠 𝑎𝑟𝑒 𝑓𝑜𝑢𝑛𝑑
𝒆𝒏𝒅
𝑟𝑒𝑡𝑢𝑟𝑛 𝑋𝑏𝑒𝑠𝑡

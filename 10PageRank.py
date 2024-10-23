import networkx as nx
import matplotlib.pyplot as plt
G =nx.DiGraph()
G.add_edges_from(
    [('a', 'b'), ('a', 'c'), ('a', 'd'), ('b', 'd'), ('b', 'e'), ('c', 'e'), ('d', 'e'), ('d', 'f'), ('e', 'f'), ('e', 'g'), ('f', 'g')]
)
plt.figure(figsize=(10, 10))
nx.draw_networkx(G, with_labels=True, node_color="lightblue", edge_color="gray", node_size=500, arrowsize=20)
hubs,auth = nx.hits(G,max_iter=5000, normalized=True)
print(hubs,auth,"hello hub scores")
print(hubs['a'],hubs['b'],hubs['c'],hubs['d'],hubs['e'],hubs['f'],hubs['g'])
print ("authority scores",auth)
plt.show()


import networkx as nx
G=nx.barabasi_albert_graph(60,41)
pr=nx.pagerank(G,0.4)
print(pr)

'''
The PageRank and HITS algorithms are foundational concepts in network theory and information retrieval, primarily used to rank web pages based on their importance or relevance. Here’s an overview of the theories behind each algorithm, which can guide your experiment:

### PageRank

1. **Basic Concept**: 
   - Developed by Larry Page and Sergey Brin, PageRank measures the importance of web pages based on their link structure. It operates on the principle that important pages are likely to be linked to by other important pages.

2. **Mathematical Model**:
   - Represent the web as a directed graph where pages are nodes and hyperlinks are directed edges. 
   - The PageRank of a page \( P \) is computed using the formula:
     \[
     PR(P) = (1 - d) + d \sumission{i \in B(P)} \frac{PR(i)}{C(i)}
     \]
     where:
     - \( PR(P) \) is the PageRank of page \( P \).
     - \( d \) is a damping factor (typically set around 0.85).
     - \( B(P) \) is the set of pages linking to \( P \).
     - \( C(i) \) is the number of outbound links from page \( i \).

3. **Iterative Computation**:
   - The algorithm iteratively updates PageRank values until convergence, ensuring that the ranks reflect the structure of the entire web.

4. **Applications**:
   - Primarily used by search engines to rank search results, but also applicable in various fields like social networks and citation analysis.

### HITS (Hyperlink-Induced Topic Search)

1. **Basic Concept**: 
   - Developed by Jon Kleinberg, HITS focuses on two types of nodes: "hubs" and "authorities". Hubs link to many authorities, while authorities are linked to by many hubs.

2. **Mathematical Model**:
   - The HITS algorithm assigns two scores to each page:
     - **Authority score**: Reflects the quality of content, based on how many hubs link to it.
     - **Hub score**: Reflects the quality of links to authorities, based on how many authorities it links to.
   - The scores are updated using the following iterative formulas:
     \[
     \text{Authority}(P) = \summission{i \in H(P)} \text{Hub}(i)
     \]
     \[
     \text{Hub}(P) = \summission{j \in A(P)} \text{Authority}(j)
     \]
     where \( H(P) \) is the set of hubs linking to page \( P \), and \( A(P) \) is the set of authorities linked by page \( P \).

3. **Convergence**:
   - Similar to PageRank, HITS uses an iterative approach to update scores until they converge.

4. **Applications**:
   - Useful in topic-specific searches where identifying authoritative sources on a subject is essential, such as academic research or specialized domains.

### Experimental Implementation

When implementing these algorithms, consider the following steps:

1. **Data Collection**: 
   - Gather a dataset of web pages, including their links. This can be a small subset of the web or a specialized database.

2. **Graph Construction**:
   - Create a directed graph representing the link structure of the collected pages.

3. **Algorithm Implementation**:
   - Implement both PageRank and HITS using an appropriate programming language or framework (e.g., Python with libraries like NetworkX).

4. **Performance Evaluation**:
   - Evaluate the results based on the accuracy of rankings and computational efficiency. You might want to visualize the rankings and compare the outcomes of both algorithms.

5. **Analysis and Interpretation**:
   - Discuss the differences in results from both algorithms, their strengths and weaknesses, and potential applications in real-world scenarios.

By understanding the theoretical foundations and carefully planning your experimental approach, you can effectively implement and analyze both the PageRank and HITS algorithms.
'''

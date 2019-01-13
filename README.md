Optimization - Academic project - Last year MSc studies @ CentraleSupélec Adam Hotait and Romain Pascual

# Clustering

Given a road network $G = (V,E)$, we want to solve the $k$-median problem, the $k$-mean problem and the $k$-center problem:

- $k$-median : provide the set of $k$ vertices $\{c_1, \dots c_k\}$ minimizing
$$ \sum_{v \in V} \min_i d_{c_i,v}$$

see: https://en.wikipedia.org/wiki/K-medians_clustering

- $k$-mean : provide the set of $k$ vertices $\{c_1, \dots c_k\}$ minimizing
$$ \sum_{v \in V} \min_i d^2_{c_i,v}$$

see: https://en.wikipedia.org/wiki/Metric_k-center

- $k$-center : provide the set of $k$ vertices $\{c_1, \dots c_k\}$ minimizing
$$ \max_{v \in V} \min_i d_{c_i,v}$$

see: https://en.wikipedia.org/wiki/K-means_clustering

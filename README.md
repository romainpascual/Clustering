Optimization - Academic project - Last year MSc studies @ CentraleSupélec Adam Hotait and Romain Pascual

# Clustering

Given a road network G = (V,E), we want to solve the k-median problem, the k-mean problem and the k-center problem:

- [k-median](https://en.wikipedia.org/wiki/K-medians_clustering) : provide the set of _k_ vertices $\{c_1, \dots c_k\}$ minimizing
$$\sum_{v \in V} \min_i d_{c_i,v}$$

- [k-mean](https://en.wikipedia.org/wiki/Metric_k-center) : provide the set of _k_ vertices $\{c_1, \dots c_k\}$ minimizing
$$ \sum_{v \in V} \min_i d^2_{c_i,v}$$

- [k-center](https://en.wikipedia.org/wiki/K-means_clustering) : provide the set of _k_ vertices $\{c_1, \dots c_k\}$ minimizing
$$ \max_{v \in V} \min_i d_{c_i,v}$$

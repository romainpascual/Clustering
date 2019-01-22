from matplotlib import pyplot as plt
import re

coords = dict()
with open("man_v.tab", "r") as file:
    for line in file.readlines():
        line = line.split()
        coords[line[0]] = (float(line[1]), float(line[2]))

plt.figure(figsize=(7,21))

for i, method in enumerate(['kmedian', 'kmean', 'kcenters']):
    clusters = dict()
    with open(method+"_results.txt", "r") as file:
        firstline = re.split('\D+',file.readline()[:-1])
        for center in firstline:
            clusters[center] = []
        for line in file.readlines():
            line = re.split('\D+',line[:-1])
            clusters[line[1]].append(coords[line[0]])
    
    plt.subplot(3,1,i+1)
    plt.gca().set_title(method)
    plt.axis('equal')
    for cluster_center, cluster in clusters.items():
        x_val = [x[0] for x in cluster]
        y_val = [x[1] for x in cluster]
        plt.scatter(x_val, y_val)

plt.subplots_adjust(hspace=0.4)
plt.show()

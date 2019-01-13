reset;
option solver gurobi;

param k;

set V;
param distance{V, V} >= 0;

# variable de décision
var center{V}, binary;

subject to maxKCenter:
	sum{v in V} center[v] <= k;

# variable de clustering
var nearestCenter{V cross V}, binary;

subject to isCenter{v in V, c in V}:
	nearestCenter[v,c] <= center[c];
	
subject to hasCenter{v in V}:
	sum{c in V} nearestCenter[v,c] = 1;

# minimising distance
minimize distanceMediane:
	sum{v in V, c in V} distance[v,c] * distance[v,c] * nearestCenter[v,c];

data /home/romain/Dropbox/DBperso/Cours/3A/OSI/Optim/DM2/Clustering/ampl/distance.dat;

solve;

display center;
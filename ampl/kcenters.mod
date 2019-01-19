reset;
option solver gurobi;

param k;

set V;
param distance{V, V} >= 0;

# decision variable
var center{V}, binary;

subject to maxKCenter:
	sum{v in V} center[v] <= k;

# clustering variable
var nearestCenter{V cross V}, binary;

subject to isCenter{v in V, c in V}:
	nearestCenter[v,c] <= center[c];
	
subject to hasCenter{v in V}:
	sum{c in V} nearestCenter[v,c] = 1;

var d, >= 0;

subject to isSmallerThanMax{v in V}:
	sum{c in V} distance[v,c] * nearestCenter[v,c] <= d;

# minimising distance
minimize distanceMediane:
	d;

# Replace it with the proper data file and path if used on a different set of data
data distance.dat;

solve;

display {v in V: center[v] = 1};
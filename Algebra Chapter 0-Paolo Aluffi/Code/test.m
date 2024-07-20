clear; clc

[element, G, realGroup, order] = cyclicGroup(3);
[element, H, order] = symmetricGroup(3);

groupHomomorphism(G, H)
groupHomomorphism(H, G)


clc; clear; close all;
import edu.stanford.math.plex4.*;

% get a new ExplicitSimplexStream
stream = api.Plex4.createExplicitSimplexStream();

for i=0:1:5
    stream.addVertex(i)
end

stream.addElement([0,1]) % ab
stream.addElement([0,3]) % ad
stream.addElement([0,4]) % ae
stream.addElement([1,2]) % bc
stream.addElement([1,3]) % bd
stream.addElement([1,4]) % be
stream.addElement([2,3]) % cd
stream.addElement([3,4]) % de
stream.addElement([0,1,2]) %abc

stream.finalizeStream()

pers = api.Plex4.getModularSimplicialAlgorithm(3, 2);

intervals = pers.computeIntervals(stream)


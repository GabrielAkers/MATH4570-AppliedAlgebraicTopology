clc; clear; close all;
import edu.stanford.math.plex4.*;

% get a new ExplicitSimplexStream
stream = api.Plex4.createExplicitSimplexStream();

for i=0:1:11
    stream.addVertex(i) % vertices that come from my drawing
end

% this is absolutely NOT an efficient way to do this I know, but it works
% I actually think I'll rewrite this in python if I have time, 
% maybe cook up a way for users to "draw" a shape?
stream.addElement([0,1]) % these are edges. see drawing in hw paper
stream.addElement([1,2])
stream.addElement([2,3])
stream.addElement([3,4])
stream.addElement([4,5])
stream.addElement([5,6])
stream.addElement([6,7])
stream.addElement([7,0])
stream.addElement([0,8])
stream.addElement([7,8])
stream.addElement([7,11])
stream.addElement([6,11])
stream.addElement([5,11])
stream.addElement([5,10])
stream.addElement([4,10])
stream.addElement([3,10])
stream.addElement([3,9])
stream.addElement([2,9])
stream.addElement([1,9])
stream.addElement([1,8])
stream.addElement([8,9])
stream.addElement([9,10])
stream.addElement([10,11])
stream.addElement([11,8])
stream.addElement([0,1,8])
stream.addElement([1,8,9])
stream.addElement([1,9,2])
stream.addElement([2,9,3])
stream.addElement([3,9,10])
stream.addElement([3,10,4])
stream.addElement([4,10,5])
stream.addElement([5,10,11])
stream.addElement([5,11,6])
stream.addElement([6,11,7])
stream.addElement([7,11,8])
stream.addElement([7,8,0])

stream.finalizeStream()

pers = api.Plex4.getModularSimplicialAlgorithm(3, 2);

intervals = pers.computeIntervals(stream)

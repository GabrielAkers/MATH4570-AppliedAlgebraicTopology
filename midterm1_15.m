%% this is the 16 square representation
clc; clear; close all;
import edu.stanford.math.plex4.*;

% get a new ExplicitSimplexStream
stream_16 = api.Plex4.createExplicitSimplexStream();

for i=0:1:15
    stream_16.addVertex(i)
end

% horiz edges
stream_16.addElement([0,1])
stream_16.addElement([1,2])
stream_16.addElement([2,3])
stream_16.addElement([3,0])

stream_16.addElement([4,5])
stream_16.addElement([5,6])
stream_16.addElement([6,7])
stream_16.addElement([7,4])

stream_16.addElement([8,9])
stream_16.addElement([9,10])
stream_16.addElement([10,11])
stream_16.addElement([11,8])

stream_16.addElement([12,13])
stream_16.addElement([13,14])
stream_16.addElement([14,15])
stream_16.addElement([15,12])

% vert edges
stream_16.addElement([0,4])
stream_16.addElement([1,5])
stream_16.addElement([2,6])
stream_16.addElement([3,7])

stream_16.addElement([4,8])
stream_16.addElement([5,9])
stream_16.addElement([6,10])
stream_16.addElement([7,11])

stream_16.addElement([8,12])
stream_16.addElement([9,13])
stream_16.addElement([10,14])
stream_16.addElement([11,15])

stream_16.addElement([12,0])
stream_16.addElement([13,1])
stream_16.addElement([14,2])
stream_16.addElement([15,3])

% diag edges
stream_16.addElement([1,4])
stream_16.addElement([2,5])
stream_16.addElement([3,6])
stream_16.addElement([0,7])

stream_16.addElement([5,8])
stream_16.addElement([6,9])
stream_16.addElement([7,10])
stream_16.addElement([4,11])

stream_16.addElement([9,12])
stream_16.addElement([10,13])
stream_16.addElement([11,14])
stream_16.addElement([8,5])

stream_16.addElement([13,0])
stream_16.addElement([14,1])
stream_16.addElement([15,2])
stream_16.addElement([12,3])

% faces
stream_16.addElement([0,1,4])
stream_16.addElement([4,5,1])
stream_16.addElement([1,2,5])
stream_16.addElement([2,5,6])
stream_16.addElement([2,3,6])
stream_16.addElement([3,6,7])
stream_16.addElement([3,0,7])
stream_16.addElement([0,7,4])

stream_16.addElement([4,5,8])
stream_16.addElement([5,9,8])
stream_16.addElement([5,6,9])
stream_16.addElement([6,9,10])
stream_16.addElement([6,7,10])
stream_16.addElement([7,10,11])
stream_16.addElement([7,4,11])
stream_16.addElement([4,11,8])

stream_16.addElement([8,9,12])
stream_16.addElement([9,13,12])
stream_16.addElement([9,10,13])
stream_16.addElement([10,14,13])
stream_16.addElement([10,11,14])
stream_16.addElement([11,15,14])
stream_16.addElement([11,8,15])
stream_16.addElement([8,12,15])

stream_16.addElement([12,13,0])
stream_16.addElement([13,1,0])
stream_16.addElement([13,14,1])
stream_16.addElement([14,2,1])
stream_16.addElement([14,15,2])
stream_16.addElement([15,3,2])
stream_16.addElement([15,12,3])
stream_16.addElement([12,0,3])

stream_16.finalizeStream()

pers_16 = api.Plex4.getModularSimplicialAlgorithm(3, 2);

intervals_16 = pers_16.computeIntervals(stream_16)
%%
% get a new ExplicitSimplexStream
stream_9 = api.Plex4.createExplicitSimplexStream();

for i=0:1:8
    stream_9.addVertex(i)
end

% horiz edges
stream_9.addElement([0,1])
stream_9.addElement([1,2])
stream_9.addElement([2,0])

stream_9.addElement([3,4])
stream_9.addElement([4,5])
stream_9.addElement([5,3])

stream_9.addElement([6,7])
stream_9.addElement([7,8])
stream_9.addElement([8,6])

% vert edges
stream_9.addElement([0,3])
stream_9.addElement([1,4])
stream_9.addElement([2,5])

stream_9.addElement([3,6])
stream_9.addElement([4,7])
stream_9.addElement([5,8])

stream_9.addElement([6,0])
stream_9.addElement([7,1])
stream_9.addElement([8,2])

% diag edges
stream_9.addElement([1,3])
stream_9.addElement([2,4])
stream_9.addElement([0,5])

stream_9.addElement([4,6])
stream_9.addElement([5,7])
stream_9.addElement([3,8])

stream_9.addElement([7,0])
stream_9.addElement([8,1])
stream_9.addElement([6,2])

% faces
stream_9.addElement([0,3,1])
stream_9.addElement([1,4,4])
stream_9.addElement([2,5,4])
stream_9.addElement([1,2,4])
stream_9.addElement([2,0,5])
stream_9.addElement([0,5,3])

stream_9.addElement([3,4,6])
stream_9.addElement([4,7,6])
stream_9.addElement([4,5,7])
stream_9.addElement([5,8,7])
stream_9.addElement([5,3,8])
stream_9.addElement([3,6,8])

stream_9.addElement([7,6,0])
stream_9.addElement([1,7,0])
stream_9.addElement([7,8,1])
stream_9.addElement([8,2,1])
stream_9.addElement([8,6,2])
stream_9.addElement([0,2,0])

stream_9.finalizeStream()

pers_9 = api.Plex4.getModularSimplicialAlgorithm(3, 2);

intervals_9 = pers_9.computeIntervals(stream_9)

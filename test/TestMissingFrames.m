%% Test that we can deal properly with an empty frame.

% Generate fake data with one empty frame.
points = {
    [ 1 1 ]
    [ 2 1 ]
    [  ]
    [ 4 2 ]
};

% Track.
[ tracks, adjacency_tracks, A ] = simpletracker(points);

assert( numel( tracks ) == 1, 'There should be only one track.' )

% Test that the first and only track is ok.
t = tracks{ 1 };
assert( numel(t) == 4, 'The track should have 4 points.')
assert( isnan( t(3) ), 'The 3rd points in the track should be a gap.' )
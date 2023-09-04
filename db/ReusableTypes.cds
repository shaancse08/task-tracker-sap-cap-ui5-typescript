namespace reusable.types;


@assert.range
type Status   : Integer enum {
    Open       = 1;
    InProgress = 2;
    Testing    = 3;
    Completed  = 4;
    InReview   = 5;
    Closed     = 6;
};

@assert.range
type Priority : Integer enum {
    High       = 1;
    Medium     = 2;
    Low        = 3
}

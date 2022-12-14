set skirmish_by_difficulty;
param length {skirmish_by_difficulty};
param marks {skirmish_by_difficulty};


var skirmish_played {skirmish_by_difficulty} >=0;

s.t. two_hour_playtime:
    sum {s in skirmish_played} * length{s} <= 120;

s.t. repeating_tolerance:
    sum {s in skirmish_played} <= 2;

maximize marks_gained:
    sum {s in skirmish_by_difficulty} points[s] * skirmish_played[s];

data;

set skirmish_by_difficulty :=
    SoMT1
    SoMT2
    SoMT3
    TICT1
    TICT2
    TICT3
    DotPPT1
    DotPPT2
    DotPPT3
    AaDT1
    AaDT2
    AaDT3
    TaMT1
    TaMT2
    TaMT3
    SaAST1
    SaAST2
    SaAST3
    FoBT1
    FoBT2
    FoBT3
    TinTT1
    TinTT2
    TinTT3
    SoGT1
    SoGT2
    SoGT3
    ;

set length :=
    SoMT1      10.5
    SoMT2      13.7
    SoMT3      21
    TICT1      13
    TICT2      16.9
    TICT3      26
    DotPPT1    12.5
    DotPPT2    16.3
    DotPPT3    25
    AaDT1      13
    AaDT2      16.9
    AaDT3      26
    TaMT1      13.5
    TaMT2      17.6
    TaMT3      27
    SaAST1     13.5
    SaAST2     17.6
    SaAST3     27
    FoBT1      15
    FoBT2      19.5
    FoBT3      30
    TinTT1     16.5
    TinTT2     21.5
    TinTT3     33
    SoGT1      24
    SoGT2      31.2
    SoGT3      48
    ;

set marks :=
    SoMT1      389
    SoMT2      408
    SoMT3      467
    TICT1      659
    TICT2      692
    TICT3      791
    DotPPT1    376
    DotPPT2    395
    DotPPT3    451
    AaDT1      397
    AaDT2      417
    AaDT3      476
    TaMT1      376
    TaMT2      395
    TaMT3      451
    SaAST1     371
    SaAST2     390
    SaAST3     445
    FoBT1      390
    FoBT2      410
    FoBT3      468
    TinTT1     578
    TinTT2     607
    TinTT3     694
    SoGT1      650
    SoGT2      687
    SoGT3      785
    ;

end;



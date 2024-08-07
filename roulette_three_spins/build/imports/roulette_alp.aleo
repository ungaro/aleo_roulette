program roulette_alp.aleo;




function play:
    input r0 as u8.private;
    input r1 as u64.private;
    lt r0 37u8 into r2;
    assert.eq r2 true;
    gt r1 0u64 into r3;
    assert.eq r3 true;
    async play r0 r1 into r4;
    output r4 as roulette_alp.aleo/play.future;

finalize play:
    input r0 as u8.public;
    input r1 as u64.public;
    rand.chacha into r2 as u8;
    rem r2 37u8 into r3;
    assert.eq r0 r3;


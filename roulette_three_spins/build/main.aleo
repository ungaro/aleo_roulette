import roulette_alp.aleo;
program roulette_three_spins_alp.aleo;




function play_three_times:
    input r0 as u8.private;
    input r1 as u64.private;
    call roulette_alp.aleo/play r0 r1 into r2;
    call roulette_alp.aleo/play r0 r1 into r3;
    call roulette_alp.aleo/play r0 r1 into r4;
    async play_three_times r2 r3 r4 into r5;
    output r5 as roulette_three_spins_alp.aleo/play_three_times.future;

finalize play_three_times:
    input r0 as roulette_alp.aleo/play.future;
    input r1 as roulette_alp.aleo/play.future;
    input r2 as roulette_alp.aleo/play.future;
    await r0;
    await r1;
    await r2;


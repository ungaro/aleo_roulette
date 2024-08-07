import roulette_alp.aleo;

// The 'roulette_three_spins' program.
program roulette_three_spins_alp.aleo {
    async transition play_three_times(choice: u8, bet: u64) -> Future {
        
        let f1: Future = roulette_alp.aleo/play(choice,bet);
        let f2: Future = roulette_alp.aleo/play(choice,bet);
        let f3: Future = roulette_alp.aleo/play(choice,bet);
        return finish_three_spins(f1,f2,f3);
    }

    async function finish_three_spins(f1:Future, f2:Future, f3:Future){
        f1.await();
        f2.await();
        f3.await();
    }
}

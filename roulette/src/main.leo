// The 'roulette' program.

program roulette_alp.aleo {
async transition play (choice: u8, bet: u64)->Future{
    assert (choice < 37u8); 
    assert (bet > 0u64);
    return spin_wheel_and_check(choice, bet);

}

async function spin_wheel_and_check(choice: u8, bet: u64){
    let rand: u8 = ChaCha::rand_u8();
    let result: u8 = rand % 37u8;
    assert_eq(choice, result);
}
}
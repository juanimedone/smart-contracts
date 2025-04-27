use solana_program::{
    account_info::{next_account_info, AccountInfo},
    entrypoint,
    entrypoint::ProgramResult,
    msg,
    pubkey::Pubkey,
};

entrypoint!(process_instruction);

// Define the main processing function
fn process_instruction(
    _program_id: &Pubkey,       
    accounts: &[AccountInfo],   // List of accounts the program can read/write
    _instruction_data: &[u8],   // Instruction payload (optional input data)
) -> ProgramResult {
    msg!("Hello from my first Solana program!");

    let accounts_iter = &mut accounts.iter();
    let account = next_account_info(accounts_iter)?;

    // Try to mutate account data
    let mut data = account.try_borrow_mut_data()?;

    // Assume the first byte is a counter, and increment it
    data[0] = data[0].wrapping_add(1);

    msg!("Counter value is now: {}", data[0]);

    Ok(())
}

// The 'poseidon' main function.
import poseidon.(Poseidon);

function main(a: field, b: field) -> field {
    return Poseidon::poseidon_2_1(a,b);
}

@test
function test_poseidon(){
    let a: field = 1field;
    let b: field = 2field;
    let hashed_values = Poseidon::poseidon_2_1(a,b);
    console.log("Max number: {} ", 0field-1field);
    console.log("Hash of 1 and 2 is: {}", hashed_values);
    //Value validated with Rust implementation
    console.assert(hashed_values == 6741600571531499538076626459614881881572634471432793830237600055083617801110field);
}

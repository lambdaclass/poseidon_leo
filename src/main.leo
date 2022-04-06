// The 'poseidon' main function.
import poseidon.(Poseidon);

function main(a: field, b: field) -> field {
    return Poseidon::poseidon_2_1(a,b);
}

@test
function test_poseidon(){
    let a: field = 0field;
    let b: field = 1field;
    let hashed_values = Poseidon::poseidon_2_1(a,b);
    console.log("Hash of 0 and 1 is: {}", hashed_values);
    console.assert(hashed_values == 2639105915233064879132977646464381413026702528531824055574468181041108226391field);
}

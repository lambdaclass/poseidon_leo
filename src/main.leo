// The 'poseidon' main function.
import poseidon.(Poseidon);

function main(a: field, b: field) -> field {
    return Poseidon::poseidon_2_1(a,b);
}

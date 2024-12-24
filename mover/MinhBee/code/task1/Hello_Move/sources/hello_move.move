module hello_move::hello {
    use sui::object::{Self, UID};
    use std::string::{Self, String};
    use sui::tx_context::{Self, TxContext};

    public struct Hello_MinhBee has key {
        id: UID,
        name: String,
    }

    public entry fun say_hello_MinhBee(ctx: &mut TxContext) {
        let hello = Hello_MinhBee{
            id: object::new(ctx),
            name: string::utf8(b"Hello MinhBee")
        };

        transfer::transfer(hello, tx_context::sender(ctx));
    }

}
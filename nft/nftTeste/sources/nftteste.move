module nftteste::nftteste {

    use sui::display;
    use sui::package::{Self, Publisher};
    use std::string::{Self, String};

    public struct NFTTESTE has drop {}

    public struct MeuNFT has key, store {
        id: UID,
        name: String,
        description: String,
        url: String
    }

    fun init(otw: NFTTESTE, ctx: &mut TxContext) {
        let publisher = package::claim(otw, ctx);
        transfer::public_transfer(publisher, tx_context::sender(ctx));
    }

    entry fun mint(
        name: vector<u8>,
        description: vector<u8>,
        url: vector<u8>,
        ctx: &mut TxContext
    ) {
        let nft = MeuNFT {
            id: object::new(ctx),
            name: string::utf8(name),
            description: string::utf8(description),
            url: string::utf8(url),
        };

        transfer::public_transfer(nft, tx_context::sender(ctx));
    }

    entry fun create_display(publisher: &Publisher, ctx: &mut TxContext) {

        let mut display = display::new_with_fields<MeuNFT>(
            publisher,
            vector[
                string::utf8(b"name"),
                string::utf8(b"description"),
                string::utf8(b"image_url")
            ],
            vector[
                string::utf8(b"{name}"),
                string::utf8(b"{description}"),
                string::utf8(b"{url}")
            ],
            ctx,
        );

        display::update_version(&mut display);
        transfer::public_transfer(display, tx_context::sender(ctx));
    }
}


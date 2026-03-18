module AESware (
    input  [127:0] data_in,
    input  [127:0] cipher_key,
    input  mode,                 // 0 = Encrypt, 1 = Decrypt
    output [127:0] data_out
);

wire [127:0] enc_out;
wire [127:0] dec_out;

// AES Encryption Core
Encryption_Core ENC (
    .plaintext(data_in),
    .cipher_key(cipher_key),
    .ciphertext(enc_out)
);

// AES Decryption Core
Decryption_Core DEC (
    .ciphertext(data_in),
    .cipher_key(cipher_key),
    .plaintext(dec_out)
);

// Mode selector
assign data_out = (mode == 1'b0) ? enc_out : dec_out;

endmodule
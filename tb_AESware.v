`timescale 1ns / 1ps

module tb_AESware;

reg  [127:0] data_in;
reg  [127:0] cipher_key;
reg  mode;

wire [127:0] data_out;

reg  [127:0] stored_cipher;
reg  [127:0] original_text;

// Instantiate AESware
AESware uut (
    .data_in(data_in),
    .cipher_key(cipher_key),
    .mode(mode),
    .data_out(data_out)
);

// Task to run encryption + decryption
task run_test;
input [127:0] text;
begin

    original_text = text;

    // -------- Encryption --------
    mode = 0;
    data_in = text;
    #10;

    stored_cipher = data_out;

    $display("\n------------------------------");
    $display("Plaintext  : %s", text);
    $display("Ciphertext : %s", stored_cipher);

    // -------- Decryption --------
    mode = 1;
    data_in = stored_cipher;
    #10;

    $display("Decrypted  : %s", data_out);

    if(data_out == original_text)
        $display("RESULT : PASS");
    else
        $display("RESULT : FAIL");

end
endtask


initial begin

cipher_key = "SecretKeyForAES!";

$display("======================================");
$display("          AESWARE TESTBENCH           ");
$display("======================================");


// Test Case 1
run_test("NiranjanKumarRaj");

// Test Case 2
run_test("RahulSharmaPriya");

// Test Case 3
run_test("ArunKumarNiranj!");

// Test Case 4
run_test("AESHardwareTest!");

// Test Case 5
run_test("VLSIDesignProject");


// -------- NIST Standard Test --------

$display("\n===== NIST AES TEST VECTOR =====");

cipher_key = 128'h000102030405060708090a0b0c0d0e0f;

mode = 0;
data_in = 128'h00112233445566778899aabbccddeeff;
#10;

$display("Plaintext  : %s", data_in);
$display("Ciphertext : %s", data_out);

mode = 1;
data_in = data_out;
#10;

$display("Decrypted  : %s", data_out);

$display("\n======================================");
$display("        TESTBENCH COMPLETED           ");
$display("======================================");

#10 $finish;

end

endmodule
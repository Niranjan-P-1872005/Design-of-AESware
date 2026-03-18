# AESWARE 🔐  
### Hardware Accelerator for AES-128 Encryption (Verilog + RISC-V Integration)

---

## 📌 Overview
AESWARE is a **hardware accelerator for AES-128 encryption and decryption**, designed and implemented in **Verilog HDL**.  
It is tightly integrated with a **5-stage pipelined RISC-V processor** to provide **high-speed, secure, and efficient cryptographic processing**.

Unlike software-based AES, AESWARE performs encryption directly in hardware, significantly improving **performance, latency, and energy efficiency**.

---

## 🚀 Features
- ✅ AES-128 Encryption & Decryption
- ✅ Hardware-based implementation (Verilog)
- ✅ Dedicated **Encryption and Decryption cores**
- ✅ Integrated **Key Expansion Unit**
- ✅ Tightly coupled with **RISC-V processor**
- ✅ High throughput and low latency
- ✅ Suitable for **IoT and embedded systems**

---

## 🧠 AES Algorithm (Summary)
AES operates on:
- **128-bit plaintext**
- **128-bit key**
- **10 rounds of transformation**

### Encryption Steps:
1. AddRoundKey  
2. SubBytes  
3. ShiftRows  
4. MixColumns  
5. AddRoundKey  

Final round excludes MixColumns.

### Decryption:
Uses inverse operations:
- InvSubBytes  
- InvShiftRows  
- InvMixColumns  

---

## 🏗️ AESWARE Architecture
AESWARE consists of:

- 🔹 **Encryption Core** – Performs AES forward operations  
- 🔹 **Decryption Core** – Performs inverse AES operations  
- 🔹 **Key Expansion Unit** – Generates round keys  
- 🔹 **Control Unit** – Manages operation flow  
- 🔹 **State Register** – Stores intermediate data  
- 🔹 **Interface Module** – Connects with RISC-V  

---

## ⚙️ Working
1. **Input Phase**  
   - Plaintext and key are loaded  

2. **Processing Phase**  
   - Key expansion generates round keys  
   - AES rounds executed  

3. **Output Phase**  
   - Ciphertext (or decrypted plaintext) is produced  

---

## 🔗 Integration with RISC-V
- Uses **custom instructions**
- Data transferred via **register file**
- Output written back to processor registers

---

## 📊 Results
- ✔ Correct encryption & decryption verified  
- ✔ Output matches original plaintext after decryption  
- ✔ Stable waveform and RTL simulation  
- ✔ No performance degradation in processor  

---

## 🛠️ Tools Used
- Verilog HDL  
- Vivado (Simulation)  
- FPGA (optional implementation)

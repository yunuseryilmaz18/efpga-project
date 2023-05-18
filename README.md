# EFPGA projesi
Yüksek lisans tezim, açık kaynak eFPGA tasarımı, için oluşturulmuş repo.

## Yapılacaklar
- FPGA'yi programlayacak blok yazılmalı. 
- Giriş Çıkış seçmek için register yazılacak.
- FPGA durumunu belirten register üretilecek.
- İhtiyaç olmayan bloklar silinecek.

## Program üretimi
### Gerekli kurulumlar
    - Software'den hex üretmek için risc-v gcc kurulumu yapılmış olması gerekiyor.
    - SRAM'e Kod göndermek için python kurulu olması gerekiyor.
### Hex üretimi
    cd /sw/bare-metal-master
    make software PROGRAM=picosoc_system BOARD=picorv

### Kaynak dosyalar
    input : /sw/bare-metal-master/software/picosoc_system/picosoc_system.c 
    output: /sw/outputs/hex/picosoc_system.hex
cmd_lbaselib.o = gcc -Wp,-MD,./.lbaselib.o.d.tmp  -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/home/volodymyrf/pktgen-dpdk/lib/lua/src/x86_64-native-linuxapp-gcc/include -I/home/volodymyrf/dpdk/x86_64-native-linuxapp-gcc/include -include /home/volodymyrf/dpdk/x86_64-native-linuxapp-gcc/include/rte_config.h -O3 -g -DLUA_USE_LINUX -DUSE_64_BIT -W -Wall -Wpointer-arith -Wcast-align -Wnested-externs -Wno-cast-align -I/home/volodymyrf/pktgen-dpdk/lib/lua/lua-5.3.4/src -fno-stack-protector    -o lbaselib.o -c /home/volodymyrf/pktgen-dpdk/lib/lua/lua-5.3.4/src/lbaselib.c 

cmd_pktgen-seq.o = gcc -Wp,-MD,./.pktgen-seq.o.d.tmp  -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/home/volodymyrf/pktgen-dpdk/app/x86_64-native-linuxapp-gcc/include -I/home/volodymyrf/dpdk/x86_64-native-linuxapp-gcc/include -include /home/volodymyrf/dpdk/x86_64-native-linuxapp-gcc/include/rte_config.h -O3 -g -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wdeprecated -Werror -fno-stack-protector -I/home/volodymyrf/pktgen-dpdk/app -I/home/volodymyrf/pktgen-dpdk/app/../lib/common -I/home/volodymyrf/pktgen-dpdk/app/../lib/common -I/home/volodymyrf/pktgen-dpdk/app/../lib/cli -I/home/volodymyrf/pktgen-dpdk/app/../lib/lua/src -I/home/volodymyrf/pktgen-dpdk/app/../lib/lua/lua-5.3.4/src    -o pktgen-seq.o -c /home/volodymyrf/pktgen-dpdk/app/pktgen-seq.c 

package.path = package.path ..";?.lua;test/?.lua;app/?.lua;"

-- 'set' commands for a number of per port values
--pktgen.set(0, "count", 1000000);
pktgen.set(0, "rate", 1);
--pktgen.set(0, "size", 150);

--pktgen.vlanid(0, 102);
pktgen.set_type("all", "ipv4");
pktgen.set_proto("all", "udp");

pktgen.clear("all");
pktgen.cls();

pktgen.page("range");

pktgen.dst_mac("all", "start", "0011:0011:0011");
pktgen.src_mac("all", "start", "1100:1100:1100");

pktgen.dst_ip("all", "start", "1.1.1.1");
pktgen.dst_ip("all", "inc", "0.0.0.0");
pktgen.dst_ip("all", "min", "1.1.1.1");
pktgen.dst_ip("all", "max", "1.1.1.1");

pktgen.src_ip("all", "start", "2.2.2.2");
pktgen.src_ip("all", "inc", "0.0.0.0");
pktgen.src_ip("all", "min", "2.2.2.2");
pktgen.src_ip("all", "max", "2.2.2.2");

pktgen.dst_port("all", "start", 1);
pktgen.dst_port("all", "inc", 1);
pktgen.dst_port("all", "min", 1);
pktgen.dst_port("all", "max", 65519);

pktgen.src_port("all", "start", 1);
pktgen.src_port("all", "inc", 1);
pktgen.src_port("all", "min", 1);
pktgen.src_port("all", "max", 65521);

pktgen.vlan_id("0", "start", 101);
pktgen.vlan_id("0", "inc", 0);
pktgen.vlan_id("0", "min", 101);
pktgen.vlan_id("0", "max", 101);

pktgen.vlan_id("1", "start", 102);
pktgen.vlan_id("1", "inc", 0);
pktgen.vlan_id("1", "min", 102);
pktgen.vlan_id("1", "max", 102);

pktgen.pkt_size("all", "start", 1000);
pktgen.pkt_size("all", "inc", 0);
pktgen.pkt_size("all", "min", 1000);
pktgen.pkt_size("all", "max", 1000);

pktgen.set_range("all", "on");
pktgen.vlan("all", "on");
pktgen.set_proto("all", "udp");

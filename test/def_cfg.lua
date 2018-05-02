package.path = package.path ..";?.lua;test/?.lua;app/?.lua;"

--pktgen.screen("off");
printf("\n Starting config!!! ");
--printf("\n count set ");
--pktgen.set("all", "count", 100);
printf("\n rate set ");
pktgen.set("all", "rate", 1);

pktgen.set_type("all", "ipv4");
pktgen.set_proto("all", "udp");
printf("\n size set ");
pktgen.set("all", "size", 1024);
--pktgen.delay(1000);
pktgen.clear("all");
pktgen.cls();
--pktgen.reset("all");
printf("\n vlan set ");
pktgen.vlanid("all", 5);



pktgen.clear("all");
pktgen.cls();
pktgen.pause("Do range commands\n", 1000);
--pktgen.page("range");
pktgen.delay(1000);

pktgen.pkt_size("all", "start", 128);
pktgen.pkt_size("all", "inc", 2);
pktgen.pkt_size("all", "min", 32);
pktgen.pkt_size("all", "max", 1518);

pktgen.vlan_id("0", "start", 5);
pktgen.vlan_id("0", "inc", 0);
pktgen.vlan_id("0", "min", 5);
pktgen.vlan_id("0", "max", 5);

pktgen.vlan_id("1", "start", 7);
pktgen.vlan_id("1", "inc", 0);
pktgen.vlan_id("1", "min", 7);
pktgen.vlan_id("1", "max", 7);

pktgen.dst_port("all", "start", 1);
pktgen.dst_port("all", "inc", 1);
pktgen.dst_port("all", "min", 1);
pktgen.dst_port("all", "max", 65519);

pktgen.src_port("all", "start", 1);
pktgen.src_port("all", "inc", 1);
pktgen.src_port("all", "min", 1);
pktgen.src_port("all", "max", 65521);

printf("\n ip proto set "); 
pktgen.ip_proto("all", "udp");
pktgen.pause("Wait a second, then go back to main page\n", 2000);


pktgen.set_proto("all", "udp");
--pktgen.set_range("all", "on");
pktgen.vlan("all", "on");

printf("\n End config! ");


pktgen.start("0");
sending = pktgen.isSending("0");
prints("isSending", sending[tonumber("0")]);
pktgen.delay(1000);
pktgen.stop("0");

sending = pktgen.isSending("0");
prints("isSending", sending);
prints("portRates", pktgen.portStats("all", "rate"));
prints("portRates", pktgen.portStats("all", "port"));

statTx = pktgen.portStats("0", "port")[tonumber("0")];
statRx = pktgen.portStats("1", "port")[tonumber("1")];
printf("\nps")
printf("Tx =  %d rx = %d", statTx.opackets, statTx.obytes);
prints("portStats TX ", statTx);
prints("portStats RX ", statRx);

printf("\nend")
packetSizeTx = statTx.obytes / statTx.opackets;
packetSizeRx = statRx.ibytes / statRx.ipackets;

prints("Transfer Packet size", packetSizeTx);
prints("Resive Packet size", packetSizeRx);

pktgen.clear("all");
pktgen.cls();


--pktgen.screen("on");


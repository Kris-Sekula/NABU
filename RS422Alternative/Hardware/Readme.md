Created some PCBs for the USB adaptor, sources are in KiCad 6.0

This adapter "intercepts" the RX  and TX signals that originally go to the RS422 circuit and "injects" the RX,TX from the USB to serial adapter... There is also option to "inject" alternative clock signal (as suggested by one of my viewers)...this should allow a real 115200 bps speeds.

Components used:
* PCB: you can use the sources to generate the gerbers or simply order from [PCBWay](https://www.pcbway.com/project/shareproject/NABU_native_USB_to_serial_adapter_4c1e523b.html)
* 2x 20pin gold round pin headers, example [eBay](https://www.ebay.com/itm/391866775529)
* DIP40 socket, example [AliExpress](9https://www.aliexpress.us/item/2255800861848499.html?) Make sure to select the 40pin version!
* USB-to-TTL serial adapter, example [Alliexpres](https://www.aliexpress.us/item/3256804658745564.html?)
* (optional) 1.8432MHz Oscillator module, example [Digikey](https://www.digikey.com/en/products/detail/ecs-inc/ECS-2100A-018/21259)

![PCBs](https://github.com/Kris-Sekula/NABU/blob/main/RS422Alternative/Hardware/Pictures/PCBs.jpg)

Installed in NABU

![IN_Nabu](https://github.com/Kris-Sekula/NABU/blob/main/RS422Alternative/Hardware/Pictures/In_nabu.jpg)

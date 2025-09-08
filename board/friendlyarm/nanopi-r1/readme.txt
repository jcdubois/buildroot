Nanopi R1

Intro
=====

This default configuration will allow you to start experimenting with the
buildroot environment for the NanoPi R1. With the current configuration
it will bring-up the board, and allow access through the serial console.

FriendlyARM Nanopi R1 link:
https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R1

How to build
============

    $ make friendlyarm_nanopi_r1_defconfig
    $ make

Note: you will need access to the internet to download the required
sources.

How to write the SD card
========================

Once the build process is finished you will have an image called "sdcard.img"
in the output/images/ directory.

Copy the bootable "sdcard.img" onto an SD card with "dd":

  $ sudo dd if=output/images/sdcard.img of=/dev/sdX
  $ sudo sync

Insert the micro SD card in your Nanopi R1 and power it up. The console
is on the debug TTL UART, 115200 8N1.

Ethernet
==========

  # udhcpc -i eth0

Enjoy!

splunk-app-pvs
==============

Tenable NNM (previously PVS for) Splunk

Introduction:
=============

The Tenable Nessus Network Monitor™ (NNM™), previously Passive Vulnerability Scanner (PVS™), monitors network traffic at the packet layer to determine topology and identify services, security vulnerabilities, suspicious network relationships, and compliance violations.


Requirements:
=============

* Tenable NNM, version 4.x or higher. 
  * You can obtain an NNM evaluation [here](https://www.tenable.com/products/nessus-network-monitor/evaluate).
* Splunk 6.x or higher.

All new NNM data will be tagged with the sourcetype tenable:nnm.  
All new PVS data will be tagged with the sourectype tenable:pvs.  
All old PVS data with the sourcetype pvs, will still be included in dashboards and saved searches.  

Configuration:
==============

* From the NNM UI, go to “Configuration”. 
* Select Syslog in the "Setting Type" dropdown.
* Click "Add" next to the "Realtime Syslog Server List"
  * Set the "IP" you have Splunk setup to listen for syslog on
  * Set the "Port" you have Splunk setup to listen for syslog on
  * Set "Format Type" to Standard
  * Set Protocol to the protocol you have Splunk setup to accept syslog over

Author:
===================
Author: Tenable, Inc.  
Support: support@tenable.com   
If you need assistance please check the [Tenable Community](https://community.tenable.com/community/tenable-community)


Disclaimer:
===========
Copyright 2017 Tenable, Inc.


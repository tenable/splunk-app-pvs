splunk-app-pvs
==============

Tenable NNM App for Splunk

Introduction:
=============

The Tenable Nessus Network Monitor™ (NNM™), previously Passive Vulnerability Scanner (PVS™), monitors network traffic at the packet layer to determine topology and identify services, security vulnerabilities, suspicious network relationships, and compliance violations.


Requirements:
=============

* Tenable NNM, version 4.x or higher. To obtain a NNM
evalutation see: https://www.tenable.com/products/nessus-network-monitor/evaluate
* Splunk 6.x or higher.

A separate index will be created and used for PVS data. This is done for search 
time performance, and it can also be used to control access to the data.


Configuration:
==============

From the NNM UI, go to “Configuration”. 

Select Syslog in the "Setting Type" dropdown.

Enter the IP and UDP port of the Splunk server in the "Realtime Syslog Server 
List".

Note: Must be entered as IP:PORT (e.g. 10.1.1.10:514).


Configuring props.conf
----------------------

The Tenable NNM Splunk App is designed to communicate natively using a UDP 
port on the Splunk Indexer with a sourcetype of [syslog]. This can be a shared 
input using the sourcetype of [syslog], or if another port is to be used then a 
new input can be added with the sourcetype of [pvs]. Refer to `props.conf` 
located in the `$SPLUNK_HOME/etc/apps/pvs/default/props.conf` file which may need to be 
altered to reflect the new configurations. More information on configuring the 
`props.conf` file can be found at 
http://docs.splunk.com/Documentation/Splunk/latest/Admin/Propsconf 


Author Information:
===================

Author: Tenable, Inc.

If you need assistance please check the Tenable Community: 
https://community.tenable.com/community/tenable-community


Disclaimer:
===========

NNM is the property of Tenable, Inc.


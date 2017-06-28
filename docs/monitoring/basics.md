Monitoring Basics
======

### ToC:
 - [Availability Monitoring]()
 - [Custom Data Monitoring]()
 - [SNMP (Health) Monitoring]()

### Availability HTTP/HTTPS Monitoring
This is most basic type of monitoring. Only most basic data is collected and analyzed - "Response Time", "Status Code", "Uptime".

![Availability Monitoring Screenshot](https://github.com/VeliovGroup/ostrio/blob/master/docs/monitoring/availability-monitoring.png?raw=true)

### Custom Data Monitoring
Return custom data from endpoint as JSON or XML to parse its data into charts with notifications triggers. 

#### As JSON:
```json
{
  "active": 98,
  "reading": 0,
  "writing": 55,
  "waiting":43
}
```

#### As XML:
```xml
<data>
  <active>98</active>
  <reading>0</reading>
  <writing>55</writing>
  <waiting>43</waiting>
</data>
```

#### Result:
![Custom Data Monitoring Screenshot](https://github.com/VeliovGroup/ostrio/blob/master/docs/monitoring/custom-monitoring.png?raw=true)

### SNMP Monitoring
SNMP monitoring also known as "Health Monitoring", where a lot of data is collected, including but not limited to:  "SSH Sessions", "CPU Consumption", "Storage Space Utilization", "Network Consumption", "RAM Usage", "System Load", "Uptime" and etc. [Read how to configure and enable SNMP monitoring](https://github.com/VeliovGroup/ostrio/blob/master/docs/monitoring/snmp.md).

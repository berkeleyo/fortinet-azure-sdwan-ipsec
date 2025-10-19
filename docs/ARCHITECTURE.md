# Architecture

This project documents **Fortinet SD-WAN with IPsec into Azure**. It keeps guidance vendor-neutral and version-explicit.

## Models covered
- **Direct SD-WAN to Azure vWAN** (NVA in hub, IPsec per spoke/branch)
- **Indirect via NVA in hub VNet** (non-vWAN)
- **Managed (provider)** variants

## Versioning
- FortiOS: 7.x/7.2/7.4 notes called out inline
- Azure: vWAN, Route Tables, UDRs, Gateway SKUs noted per section

## Connectivity primitives
- IKEv2, DPD, rekey/lifetime, NAT-T
- BGP optional: advertised prefixes, weight/AS-path tips

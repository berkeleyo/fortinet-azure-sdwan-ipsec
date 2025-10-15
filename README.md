
# Fortinet SD-WAN/IPsec to Azure

Reference configs + notes for connecting FortiGate to Azure hub-and-spoke.

## Notes
- Use route-based VPN on FortiGate
- In Azure: use Virtual Network Gateway (VpnGw SKU)
- Enable MSS clamping if you see fragmentation on IPsec

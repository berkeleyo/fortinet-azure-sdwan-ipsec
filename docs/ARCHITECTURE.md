# Architecture
- Topologies: NVA hub, Azure vWAN, dual-site.
- IPsec: IKEv2, AES-GCM, PFS; align lifetimes/selectors.
- Routing: UDRs or BGP (vWAN/scale). Avoid asymmetry.
- HA: zones/LB/FortiGate HA; health probes; secure admin plane.

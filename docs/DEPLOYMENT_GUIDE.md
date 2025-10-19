# Deployment Guide

> Tested locally via MkDocs. Validate against your Azure/FortiOS versions.

## Prereqs
- Azure subscription + RBAC
- FortiGate with SD-WAN overlays configured
- Tooling: PowerShell 7+, Python 3.11+ (or 3.13), MkDocs

## Steps
1. Prepare address objects & phase1/phase2 proposals
2. Create/verify Azure vWAN or hub VNet
3. Provision IPsec tunnel(s) and BGP (optional)
4. Add/validate UDRs, route propagation, firewall policies
5. Test flows (ICMP, TCP 443, custom), observe logs
6. Stabilize timers and failover thresholds

## Validation
- End-to-end ping + TCP test
- Route table checks (effective routes)
- FortiGate session table and IPSec SA states

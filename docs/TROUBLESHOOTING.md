# Troubleshooting

## Quick triage
1. **Is the tunnel up?** (SAs / logs)
2. **Do routes exist both ways?** (effective routes, BGP learned)
3. **Is traffic permitted?** (firewall policy hit counts)
4. **Asymmetric paths?** (SNAT/match rules)

## Useful commands
- Azure: `Test-AzNetworkConnectivity`, effective routes
- FortiGate: `diag vpn ike`, `diag debug flow`

## Common symptoms
- DPD failures  check NAT-T and timers
- One-way reachability  UDR asymmetry / policy

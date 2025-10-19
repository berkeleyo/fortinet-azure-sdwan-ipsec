# FAQ

**Q: Which IKE/phase2 settings are safest defaults?**  
A: Start with IKEv2, AES-GCM, PFS on; align lifetimes on both ends.

**Q: BGP or static routes?**  
A: Use BGP for multi-tunnel/scale; static for very small/simple sites.

**Q: How do I test without production risk?**  
A: Bring up a lab VNet/spoke and a test tunnel first. Validate flows, then mirror config in prod.

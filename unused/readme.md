# Cloudflared #
* Cloudflared and stubby performance are very similar but cloudflared is a lot larger than stubby and requires additional packages to install and use
* Stubby can be pacman directly for the build so is more space efficient.

# Unbound #
* Unbound is more full-featured but it lags in performance (higher latency) as compared to stubby
* Decision to use stubby even though binhex comes with unbound already installed. A bit more storage space is less of a concern than high latency


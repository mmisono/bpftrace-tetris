# bpftrace-tetris

This is the ported version of [tetris.spt](https://github.com/mhiramat/stapgames/blob/master/games/tetris.stp).

<image src="https://user-images.githubusercontent.com/186170/69949674-4eefa680-1535-11ea-8def-64058a098e51.gif" width="40%"/>

## Requirements
- Linux 5.3+
- [bcc](https://github.com/iovisor/bcc) master branch version
- [bpftrace](https://github.com/iovisor/bpftrace) master branch version

## How to run

- `./run.sh`

### In Vagrant

If you do not readily have access to a recent linux kernel and bpftrace, you can try the included Vagrant file which launches ubuntu eoan so you can still play tetris!


Download vagrant from https://www.vagrantup.com/downloads.html, and make sure you have either VMWare or [Virtualbox 6.0 installed](https://www.virtualbox.org/wiki/Download_Old_Builds_6_0).

Install both, then run:

```
vagrant plugin install vagrant-vbguest
```

You can then run tetris with:

```
./run-in-vagrant.sh
```

### In Docker

```
./run-in-docker.sh
```

Note that this also run with a recent Docker Desktop for Mac.

## FAQ

### Q. Why is Linux 5.3+ required?
Otherwise the BPF program will be rejected due to the maximum instruction limit (see [this commit](https://github.com/torvalds/linux/commit/c04c0d2b968ac45d6ef020316808ef6c82325a82).)

### Q. How do I change the dropping speed?
It can be changed by modifying the interval value of `interval:ms:99`.

### Q. How are blocks represented?
<img src="https://user-images.githubusercontent.com/186170/69930048-c0fbc780-1504-11ea-87a0-78e6e292e3a2.png" width="60%" />

## License
GPL v2 or later

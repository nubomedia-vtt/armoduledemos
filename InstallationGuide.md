Installing Optional ArMarkerDetectorDemo
=========================
These are the instructions how to utilize the ar-markerdetector filter of of the [ARModule](https://github.com/nubomedia-vtt/armodule). Thus, after installation of ar-markerdeterctor is done, you can test the filter with this sample application.

It is assumed that the sample application will be installed to the same host
where KMS is installed. Otherwise change the code of ar3d.

**Installing**

Fetch and execute the installation script:
```bash
wget -N http://80.96.122.50/Markus.Ylikerala/vtt-armarkerdetector/raw/master/optional.sh
chmod u+x optional.sh
./optional.sh
```

**For Ubuntu Server Users**

Run X:
```bash
xinit
```
If you're not authorized to run X, the following might help:
```bash
sudo dpkg-reconfigure x11-common
```

**For Ubuntu Desktop Users**

If you're not authorized to access X, then:
```bash
xhost +
```

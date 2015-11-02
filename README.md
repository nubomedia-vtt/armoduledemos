This project is part of NUBOMEDIA
[www.nubomedia.eu](http://www.nubomedia.eu)

=========================
This document describes how to utilize the [ARModule](https://github.com/nubomedia-vtt/armodule)

Some material that can be utilized is given at the end.


**On the Server Side**

To lauch the test program clone this repository and execute
```bash
cd armoduledemos/ar3d
mvn compile exec:java -Dexec.mainClass="fi.vtt.nubomedia.kurento.Ar3DApp"
```

**On the Client Side**

Browse with WebRTC compliant browser (eg Chrome, Firefox) 
to the server where ar3d is launched http://IP_OF_AR3DHOST:8080/
Change the IP_OF_AR3DHOST and port (8080) if needed.

You should now see AR Demo so just follow the given instructions on that page.

**Note For Ubuntu Desktop Users**

On some environments, for some reason, it has been reported that since KMSv6 
screen can get partially or totally blank. But because ssh works, it might
be better to install ssh server beforehand to gain control to the host again.


Details of the Demo
---------
Ar3D Kurento Client gets the data that is passes to the filter as json either from the browser ie javascipt or from the file system
For this demo the default json data is gotten from the browser if you execute:
```bash
mvn compile exec:java -Dexec.mainClass="fi.vtt.nubomedia.kurento.Ar3DApp"
```

But json data is gotten from the file system if executed with a valid json file eg [local.json](https://github.com/nubomedia-vtt/armoduledemos/blob/master/ar3d/local.json)
```bash
mvn compile exec:java -Dexec.mainClass="fi.vtt.nubomedia.kurento.Ar3DApp" -Dexec.args="local.json"
```

Ar3D Kurento Client passes data related to the augmentation via key-value pairs eg {”model”, ”/opt/cube.ply”}, {”scale”, 0.5f}.
This is described in kmd of the ARModule [armarkerdetector.ArMarkerdetector.kmd.json](https://github.com/nubomedia-vtt/armodule/blob/master/ar-markerdetector/src/server/interface/armarkerdetector.ArMarkerdetector.kmd.json)
Please refer to this kmd to find out more about the syntax of json currently in use.

The models, images etc are loaded from the file system or via URL.

Thus, please check that the paths/URLs are correct ie that eg /opt/cube.ply is readable.

An example about the syntax
```bash
  '{"id":0, "type":"3D", "strings":[{"model":"/opt/faerie.md2"}, {"texture":"/opt/faerie2.bmp"}], "floats":[{"scale":0.09}]},
```
```bash
"id":0 = Alvar Marker 0 ie Zero Marker
```
```bash
"type":"3D" = render as 3D model (2D for flat models)
```
```bash
"model":"/opt/faerie.md2" = 3D model that to be rendered
```
```bash
"texture":"/opt/faerie2.bmp" = texture for the 3D model in md2 format
```
```bash
"scale":0.09} = scaling of the 3D model
```
      
Material
=========================

**Augmented models**

Some models can be found eg from [models](https://github.com/nubomedia-vtt/armoduledemos/tree/master/Models) 


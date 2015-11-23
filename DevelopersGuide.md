Developers Guide
=========================

This document describes details of the ArDemo for that utilizes [ARModule](https://github.com/nubomedia-vtt/armodule)

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


KurentoClient 
---------

The following functionality is supported:

```bash
			ArMarkerdetector arFilter = new ArMarkerdetector.Builder(pipeline).build();
			arFilter.enableAugmentation(true);
			arFilter.setMarkerPoseFrequency(false/true, 1);
			arFilter.setMarkerPoseFrameFrequency(false/true, 10);
			arFilter.enableMarkerCountEvents(false/true);	
```
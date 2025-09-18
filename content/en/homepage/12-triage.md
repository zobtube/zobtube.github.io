---
title: "Triage"
weight: 12
---

ZobTube is a tool aiming to help sorting videos. To achieve this, all videos are initially stored in the `/triage` folder. You can place them directly inside it or upload them through the upload window.

A video in triage can then be imported (by selected its kind: video, movie or clip).

Once imported, the video will be moved a new dedicated folder (depending on its kind), the duration will be computed (using `ffmpeg`) and a thumbnail will be generated (also using `ffmpeg`).

The video will then be editable, allowing to add **channels**, **actors** and **categories**.

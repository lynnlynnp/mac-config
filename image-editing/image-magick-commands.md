# ImageMagick Commands

## Adding Coloured Background
The script below will output an image with a frame 20% larger than its width and height.
<br>
`magick $img -background white -gravity center -extent 120%x120% output-$img.png`
<br>
Alternatively, to add an _even_ "frame" (background) use the code below. In this example, we're adding a frame of 60px evenly around the image:
<br>
`magick $img -background $color -gravity center -extent "%[fx:w+60]x%[fx:h+60]" output-$img.png`

## Rounding Corners – Geometrically
`magick $img \
\( -size "$(magick identify -format %wx%h" "$img")" xc:none -fill white \
-draw  "roundrectangle 0,0 %[fx:w]x%[fx:h] $radius, $radius" \) \
-alpha set -compose DstIn -composite "$output"`

## Blurring an Image
Please note, if you want a **blurred** rounded image, you should **blur first** and round second.

`magick $img -gravity center -blur 0x[blur amount] output.png`

## Crop Image Into Circle
Note, this method doesn't automatically detect the smallest side of the image and use that to crop the image.

- **For square images:** `magick $img -alpha set -background none -vignette 0x0 rounded-$img.png` 
<br>
- **For non-square images:** `magick $img -gravity center -crop 1:1 -alpha set -backgorund none -vignette 0x0 round-$img.png`
<br>
Here's how to extend the backgronud of the image, in case you want the crop to be a little wider. Note this only works for image with a solid color background:
<br>
`magick input.jpg -background orange -gravity center -extent 150%x150% output.png`

## Crop Image To A Certain Ratio (Without Resizing)
For this example, we're using a ratio of 3:4 :
<br>
`magick input.jpg -gravity center -crop 3:4 +repage output.jpg`

package com.hegx.utils;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.io.File;
import java.io.IOException;

public final class ImageUtil
{
  public static void createThumb(String srcImgPath, String destImgPath, int destImgW, int destImgH)
  {
    try
    {
      BufferedImage bi = ImageIO.read(new File(srcImgPath));
      int srcImgW = bi.getWidth();
      int srcImgH = bi.getHeight();

      if (srcImgW / srcImgH > destImgW / destImgH) {
        int narrowImgW = (int)(destImgH / srcImgH * srcImgW);
        int narrowImgH = destImgH;

        int cutNarrowImgSize = (narrowImgW - destImgW) / 2;
        BufferedImage narrowImg = new BufferedImage(narrowImgW, narrowImgH, 1);
        narrowImg.getGraphics().drawImage(bi.getScaledInstance(narrowImgW, narrowImgH, 4), 0, 
          0, null);

        Image image = narrowImg.getScaledInstance(narrowImgW, narrowImgH, 1);
        CropImageFilter cropFilter = new CropImageFilter(cutNarrowImgSize, 0, narrowImgW - cutNarrowImgSize, 
          narrowImgH);
        Image img = Toolkit.getDefaultToolkit().createImage(
          new FilteredImageSource(image.getSource(), cropFilter));
        BufferedImage cutLiftNarrowImg = new BufferedImage(narrowImgW - cutNarrowImgSize, narrowImgH, 
          1);
        cutLiftNarrowImg.getGraphics().drawImage(img, 0, 0, null);

        image = cutLiftNarrowImg.getScaledInstance(narrowImgW - cutNarrowImgSize, narrowImgH, 
          1);
        cropFilter = new CropImageFilter(0, 0, narrowImgW - cutNarrowImgSize * 2, narrowImgH);
        img = Toolkit.getDefaultToolkit().createImage(new FilteredImageSource(image.getSource(), cropFilter));
        BufferedImage cutRightNarrowImg = new BufferedImage(narrowImgW - cutNarrowImgSize * 2, narrowImgH, 
          1);
        Graphics g = cutRightNarrowImg.getGraphics();
        g.drawImage(img, 0, 0, null);
        g.dispose();

        ImageIO.write(cutRightNarrowImg, "JPEG", new File(destImgPath));
      } else {
        int narrowImgW = destImgW;
        int narrowImgH = (int)(destImgW / srcImgW * srcImgH);
        int cutNarrowImgSize = (narrowImgH - destImgH) / 2;

        BufferedImage narrowImg = new BufferedImage(narrowImgW, narrowImgH, 1);
        narrowImg.getGraphics().drawImage(bi.getScaledInstance(narrowImgW, narrowImgH, 4), 0, 
          0, null);

        Image image = narrowImg.getScaledInstance(narrowImgW, narrowImgH, 1);
        CropImageFilter cropFilter = new CropImageFilter(0, cutNarrowImgSize, narrowImgW, narrowImgH - 
          cutNarrowImgSize);
        Image img = Toolkit.getDefaultToolkit().createImage(
          new FilteredImageSource(image.getSource(), cropFilter));
        BufferedImage cutTopNarrowImg = new BufferedImage(narrowImgW, narrowImgH - cutNarrowImgSize, 
          1);
        cutTopNarrowImg.getGraphics().drawImage(img, 0, 0, null);

        image = cutTopNarrowImg.getScaledInstance(narrowImgW, narrowImgH - cutNarrowImgSize, 
          1);
        cropFilter = new CropImageFilter(0, 0, narrowImgW, narrowImgH - cutNarrowImgSize * 2);
        img = Toolkit.getDefaultToolkit().createImage(new FilteredImageSource(image.getSource(), cropFilter));
        BufferedImage cutBottomNarrowImg = new BufferedImage(narrowImgW, narrowImgH - cutNarrowImgSize * 2, 
          1);
        Graphics g = cutBottomNarrowImg.getGraphics();
        g.drawImage(img, 0, 0, null);
        g.dispose();
        ImageIO.write(cutBottomNarrowImg, "JPEG", new File(destImgPath));
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  public static void main(String[] args) {
    createThumb("E://3.jpg", "E://3_1.jpg", 500, 300);
  }
}
package com.tech.blog.helper;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.io.File;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Random;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;
import javax.swing.*;


public class QRCodeGenerator 
{
    public QRCodeGenerator(int otp) throws IOException
    {
        int otp1=otp;
        ByteArrayOutputStream out=QRCode.from(otp1+"").to(ImageType.PNG).stream();
        File f=new File("E:\\QR_File\\OTP.png");
        FileOutputStream fos=new FileOutputStream(f);
        fos.write(out.toByteArray());
        fos.flush();
    }
//    public static void main(String s[]) throws IOException
//	{
//		new QRCodeGenerator();
//	}
}

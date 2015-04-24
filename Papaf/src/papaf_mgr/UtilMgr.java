// Decompiled by Jad v1.5.8f. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UtilMgr.java

package papaf_mgr;

import java.io.File;

public class UtilMgr
{

    public UtilMgr()
    {
    }

    public static String replace(String str, String pattern, String replace)
    {
        int s = 0;
        int e = 0;
        StringBuffer result = new StringBuffer();
        while((e = str.indexOf(pattern, s)) >= 0) 
        {
            result.append(str.substring(s, e));
            result.append(replace);
            s = e + pattern.length();
        }
        result.append(str.substring(s));
        return result.toString();
    }

    public static void delete(String s)
    {
        File file = new File(s);
        if(file.isFile())
            file.delete();
    }

    public static String con(String s)
    {
        String str = null;
        try
        {
            str = new String(s.getBytes("8859_1"), "ksc5601");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return str;
    }
}

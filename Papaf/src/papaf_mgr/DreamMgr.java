// Decompiled by Jad v1.5.8f. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DreamMgr.java

package papaf_mgr;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.sql.*;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import papaf_bean.DreamBean;

// Referenced classes of package papaf_mgr:
//            DBConnectionMgr

public class DreamMgr
{

    public DreamMgr()
    {
        try
        {
            pool = DBConnectionMgr.getInstance();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    public Vector<DreamBean> getDreamList()
    {
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        Vector<DreamBean> vlist;
        con = null;
        pstmt = null;
        rs = null;
        String sql = null;
        vlist = new Vector<DreamBean>();
        try
        {
            con = pool.getConnection();
            sql = "select * from papafdream";
            pstmt = con.prepareStatement(sql);
            DreamBean bean;
            while(rs.next())
            {
                bean = new DreamBean();
                bean.setNum(rs.getInt("no"));
                bean.setTitle(rs.getString("title"));
                bean.setClosing_date(rs.getString("closing_date"));
                bean.setCreate_date(rs.getString("create_date"));
                bean.setDetail_1(rs.getString("detail_1"));
                bean.setDetail_2(rs.getString("detail_2"));
                bean.setDetail_3(rs.getString("detail_3"));
                bean.setDetail_4(rs.getString("detail_4"));
                bean.setId(rs.getString("id"));
            }
        }
        catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
        return vlist;
    }

    public void insertDream(HttpServletRequest req)
    {
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        con = null;
        pstmt = null;
        rs = null;
        String sql = null;
        MultipartRequest multi = null;
        try
        {
            con = pool.getConnection();
            sql = "select max(no)  from papafdream";
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            multi = new MultipartRequest(req, "/home/hosting_users/hyukjae89/tomcat/webapps/fileupload", MAXSIZE, "euc-kr", new DefaultFileRenamePolicy());
            sql = "insert into papafdream(title,closing_date,create_date,detail_1,detail_2,detail_3,detail_4,id)";
            sql = (new StringBuilder(String.valueOf(sql))).append("values(?, ?, now(), ?, ?, ?, ?, ?)").toString();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, multi.getParameter("title"));
            pstmt.setString(2, multi.getParameter("closing_date"));
            pstmt.setString(3, multi.getParameter("detail_1"));
            pstmt.setString(4, multi.getParameter("detail_2"));
            pstmt.setString(5, multi.getParameter("detail_3"));
            pstmt.setString(6, multi.getParameter("detail_4"));
            pstmt.setString(7, multi.getParameter("id"));
            pstmt.executeUpdate();
        }
        catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
    }

    public DreamBean getDream(int num)
    {
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        DreamBean bean;
        con = null;
        pstmt = null;
        rs = null;
        String sql = null;
        bean = new DreamBean();
        try
        {
            con = pool.getConnection();
            sql = "select * from papafdream where no=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
            if(rs.next())
            {
                bean.setNum(rs.getInt("no"));
                bean.setTitle(rs.getString("title"));
                bean.setClosing_date(rs.getString("closing_date"));
                bean.setCreate_date(rs.getString("create_date"));
                bean.setDetail_1(rs.getString("detail_1"));
                bean.setDetail_2(rs.getString("detail_2"));
                bean.setDetail_3(rs.getString("detail_3"));
                bean.setDetail_4(rs.getString("detail_4"));
                bean.setId(rs.getString("id"));
            }
        }
        catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
        return bean;
    }

    public void deleteDream(int num)
    {
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        con = null;
        pstmt = null;
        String sql = null;
        rs = null;
        try
        {
            con = pool.getConnection();
            sql = "delete from papafdream where no=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, num);
            pstmt.executeUpdate();
        }
        catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
    }

    public void updateDream(DreamBean bean)
    {
        Connection con;
        PreparedStatement pstmt;
        con = null;
        pstmt = null;
        String sql = null;
        try
        {
            con = pool.getConnection();
            sql = "update papafdream set title=?,detail_1=?,detail_2=?,detail_3=?,detail_4=? where no=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, bean.getTitle());
            pstmt.setString(2, bean.getDetail_1());
            pstmt.setString(3, bean.getDetail_2());
            pstmt.setString(4, bean.getDetail_3());
            pstmt.setString(5, bean.getDetail_4());
            pstmt.setInt(6, bean.getNum());
            pstmt.executeUpdate();
        }
        catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
    }

    private DBConnectionMgr pool;
    private static final String SAVEFOLDER = "/home/hosting_users/hyukjae89/tomcat/webapps/fileupload";
    private static final String ENCTYPE = "euc-kr";
    private static int MAXSIZE = 0x500000;

}

// Decompiled by Jad v1.5.8f. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MemberMgr.java

package papaf_mgr;

import papaf_bean.MemberBean;

import java.sql.*;

// Referenced classes of package blog_mgr:
//            DBConnectionMgr

public class MemberMgr
{

    public MemberMgr()
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

    public boolean checkId(String id)
    {
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        boolean flag;
        con = null;
        pstmt = null;
        rs = null;
        String sql = null;
        flag = false;
        try
        {
            con = pool.getConnection();
            sql = "select id from tblmember where id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            flag = pstmt.executeQuery().next();
        }
        catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
        return flag;
    }

    public boolean loginMember(String id, String pass)
    {
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        boolean flag;
        con = null;
        pstmt = null;
        rs = null;
        String sql = null;
        flag = false;
        try
        {
            con = pool.getConnection();
            sql = "select id from tblmember where id=? and pass=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, pass);
            rs = pstmt.executeQuery();
            flag = rs.next();
        }
        catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
        return flag;
    }

    public MemberBean getMember(String id)
    {
        Connection con;
        MemberBean bean;
        con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        bean = null;
        String sql = null;
        try
        {
            con = pool.getConnection();
            sql = "select * from tblmember where id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if(rs.next())
            {
                bean = new MemberBean();
                bean.setBday(rs.getString("bday"));
                bean.setPass(rs.getString("pass"));
                bean.setName(rs.getString("name"));
                bean.setEmail(rs.getString("email"));
            }
        }
        catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
        return bean;
    }

    public boolean insertMember(MemberBean bean){
    	Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {

			con = pool.getConnection();
			sql = "insert tblMember(name, email, pass, bday)"
					+ "values(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getPass());
			pstmt.setString(4, bean.getBday());
			
			if (pstmt.executeUpdate() == 1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
    }
    private DBConnectionMgr pool;
}

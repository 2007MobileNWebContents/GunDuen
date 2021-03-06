package driver.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import driver.model.vo.Driver;

public class DriverDAO {
	public int insertDriver(Connection conn, Driver driver) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO DRIVER VALUES(?,?,?,?,?,?,?,0,?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, driver.getDriverId());
			pstmt.setString(2, driver.getDriverPwd());
			pstmt.setString(3, driver.getDriverName());
			pstmt.setString(4, driver.getDriverPhone());
			pstmt.setString(5, driver.getDriverEmail());
			pstmt.setString(6, driver.getDriverHome());
			pstmt.setString(7, driver.getDriverRrn());
			pstmt.setString(8, driver.getDriverSelfInfo());
			pstmt.setString(9, driver.getDriverLicense());
			pstmt.setString(10, driver.getDriverLicense_path());
			pstmt.setString(11, driver.getDriverBLicense());
			pstmt.setString(12, driver.getDriverBLicense_path());
			pstmt.setString(13, driver.getDriverInfoImage());
			pstmt.setString(14, driver.getDriverInfoImage_path());
			pstmt.setString(15, driver.getDriverArea());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}
	
	public Driver loginDriver(Connection conn, String userId, String userPwd) {
		Driver driver = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query="SELECT * FROM DRIVER WHERE DRIVER_ID=? AND DRIVER_PWD=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			rset = pstmt.executeQuery();
			if(rset!=null) {
				while(rset.next()) {
					driver = new Driver();
					driver.setDriverId(rset.getString("driver_Id"));
					driver.setDriverPwd(rset.getString("driver_Pwd"));
					driver.setDriverName(rset.getString("driver_Name"));
					driver.setDriverPhone(rset.getString("driver_Phone"));
					driver.setDriverEmail(rset.getString("driver_Email"));
					driver.setDriverHome(rset.getString("driver_Home"));
					driver.setDriverRrn(rset.getString("driver_Rrn"));
					driver.setDriverCheck(rset.getString("driver_Check").charAt(0));
					driver.setDriverSelfInfo(rset.getString("driver_SelfIntro"));
					driver.setDriverLicense(rset.getString("driver_License"));
					driver.setDriverBLicense(rset.getString("driver_bLicense"));
					driver.setDriverInfoImage(rset.getString("driver_InfoImage"));
					driver.setDriverArea(rset.getString("driver_Area"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(conn);
		}
		return driver;
	}
	
	public int deleteDriver(Connection conn,String userId) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM DRIVER WHERE DRIVER_ID = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
													
	}
	
	public int resetPassword(Connection conn, String rePwd, String driverId, String driverName) {
		int result=0;
		PreparedStatement pstmt = null;
		String query = "UPDATE DRIVER SET DRIVER_PWD=? WHERE DRIVER_ID=? AND DRIVER_NAME=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, rePwd);
			pstmt.setString(2, driverId);
			pstmt.setString(3, driverName);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public Driver findPw(Connection conn, String driverId, String driverName) {
		Driver driver = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM DRIVER WHERE DRIVER_ID=? AND DRIVER_NAME = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, driverId);
			pstmt.setString(2, driverName);
			rset = pstmt.executeQuery();
			if(rset!=null) {
				while(rset.next()) {
					driver = new Driver();
					driver.setDriverId(rset.getString("driver_Id"));
					driver.setDriverPwd(rset.getString("driver_Pwd"));
					driver.setDriverName(rset.getString("driver_Name"));
					driver.setDriverPhone(rset.getString("driver_Phone"));
					driver.setDriverEmail(rset.getString("driver_Email"));
					driver.setDriverHome(rset.getString("driver_Home"));
					driver.setDriverRrn(rset.getString("driver_Rrn"));
					driver.setDriverCheck(rset.getString("driver_Check").charAt(0));
					driver.setDriverSelfInfo(rset.getString("driver_SelfIntro"));
					driver.setDriverLicense(rset.getString("driver_License"));
					driver.setDriverBLicense(rset.getString("driver_bLicense"));
					driver.setDriverInfoImage(rset.getString("driver_InfoImage"));
					driver.setDriverArea(rset.getString("driver_Area"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return driver;
	}
	
	public Driver findId(Connection conn, String driverName, String driverEmail) {
		Driver driver = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query  = "SELECT * FROM DRIVER WHERE DRIVER_NAME=? AND DRIVER_EMAIL=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, driverName);
			pstmt.setString(2, driverEmail);
			rset = pstmt.executeQuery();
			if(rset!=null) {
				while(rset.next()) {
					driver = new Driver();
					driver.setDriverId(rset.getString("driver_Id"));
					driver.setDriverPwd(rset.getString("driver_Pwd"));
					driver.setDriverName(rset.getString("driver_Name"));
					driver.setDriverPhone(rset.getString("driver_Phone"));
					driver.setDriverEmail(rset.getString("driver_Email"));
					driver.setDriverHome(rset.getString("driver_Home"));
					driver.setDriverRrn(rset.getString("driver_Rrn"));
					driver.setDriverCheck(rset.getString("driver_Check").charAt(0));
					driver.setDriverSelfInfo(rset.getString("driver_SelfIntro"));
					driver.setDriverLicense(rset.getString("driver_License"));
					driver.setDriverBLicense(rset.getString("driver_bLicense"));
					driver.setDriverInfoImage(rset.getString("driver_InfoImage"));
					driver.setDriverArea(rset.getString("driver_Area"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return driver;
	}
	
	public boolean idCheck(Connection conn, String id) {
		boolean x = false;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM DRIVER WHERE DRIVER_ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				x = true;
				return x;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return x;
	}
	
	public boolean phoneCheck(Connection conn, String phoneNum) {
		boolean x = false;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM DRIVER WHERE DRIVER_PHONE=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, phoneNum);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				x = true;
				return x;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return x;
	}
	
	public boolean emailCheck(Connection conn, String email) {
		boolean x = false;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM DRIVER WHERE DRIVER_EMAIL = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				x = true;
				return x;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	
	public Driver selectDriver(Connection conn, String driverId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM DRIVER WHERE DRIVER_ID = ?";
		Driver driver = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, driverId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				driver = new Driver();
				driver.setDriverId(rset.getString("driver_Id"));
				driver.setDriverPwd(rset.getString("driver_Pwd"));
				driver.setDriverName(rset.getString("driver_Name"));
				driver.setDriverPhone(rset.getString("driver_Phone"));
				driver.setDriverEmail(rset.getString("driver_Email"));
				driver.setDriverHome(rset.getString("driver_Home"));
				driver.setDriverArea(rset.getString("driver_Area"));
				driver.setDriverRrn(rset.getString("driver_Rrn"));
				driver.setDriverCheck (rset.getInt("driver_Check"));
				driver.setDriverSelfInfo(rset.getString("driver_SelfIntro"));
				driver.setDriverLicense(rset.getString("driver_License"));
				driver.setDriverLicense(rset.getString("driver_License_path"));
				driver.setDriverBLicense(rset.getString("driver_Blicense"));
				driver.setDriverBLicense(rset.getString("driver_Blicense_path"));
				driver.setDriverInfoImage(rset.getString("driver_InfoImage"));
				driver.setDriverInfoImage(rset.getString("driver_InfoImage_path"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return driver;
		
	}
	
	
	public int updateDriver(Connection conn, Driver driver) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE DRIVER SET DRIVER_PWD=?, DRIVER_NAME=?, DRIVER_PHONE = ?, DRIVER_EMAIL=?, DRIVER_HOME = ?, DRIVER_RRN=?, "
				+ "DRIVER_SELFINTRO = ?, DRIVER_LICENSE = ?,DRIVER_LICENSE_PATH=? , DRIVER_BLICENSE = ?, DRIVER_BLICENSE_PATH=?, DRIVER_INFOIMAGE = ?, "
				+ "DRIVER_INFOIMAGE_PATH=?, DRIVER_AREA = ? WHERE DRIVER_ID = ? ";
	    try {
	    	pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, driver.getDriverPwd());
			pstmt.setString(2, driver.getDriverName());
			pstmt.setString(3, driver.getDriverPhone());
			pstmt.setString(4, driver.getDriverEmail());
			pstmt.setString(5, driver.getDriverHome());
			pstmt.setString(6, driver.getDriverRrn());
			pstmt.setString(7, driver.getDriverSelfInfo());
			pstmt.setString(8, driver.getDriverLicense());
			pstmt.setString(9, driver.getDriverLicense_path());
			pstmt.setString(10, driver.getDriverBLicense());
			pstmt.setString(11, driver.getDriverBLicense_path());
			pstmt.setString(12, driver.getDriverInfoImage());
			pstmt.setString(13, driver.getDriverInfoImage_path());
			pstmt.setString(14, driver.getDriverArea());
			pstmt.setString(15, driver.getDriverId());
			result = pstmt.executeUpdate();
	    	
	    } catch (SQLException e) {
	    	e.printStackTrace();
	    }finally {
	    	JDBCTemplate.close(pstmt);
	    }
	    return result;
	}
	
	//admin
	
	public ArrayList<Driver> adminDriverList(Connection conn, int currentPage, int recordCountPerPage){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Driver> DList = null;
		String query = "SELECT * FROM (SELECT DRIVER.*, ROW_NUMBER() OVER(ORDER BY DRIVER_NAME DESC) AS NUM FROM DRIVER) WHERE NUM BETWEEN ? AND ?";
		int start = currentPage*recordCountPerPage - (recordCountPerPage -1);
		int end = currentPage*recordCountPerPage;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			DList = new ArrayList<Driver>();
			while(rset.next()) {
				Driver driverOne = new Driver();
				driverOne.setDriverId(rset.getString("DRIVER_ID"));
				driverOne.setDriverPwd(rset.getString("DRIVER_PWD"));
				driverOne.setDriverName(rset.getString("DRIVER_NAME"));
				driverOne.setDriverPhone(rset.getString("DRIVER_PHONE"));
				driverOne.setDriverEmail(rset.getString("DRIVER_EMAIL"));
				driverOne.setDriverHome(rset.getString("DRIVER_HOME"));
				driverOne.setDriverRrn(rset.getString("DRIVER_RRN"));
				driverOne.setDriverCheck(rset.getInt("DRIVER_CHECK"));
				driverOne.setDriverSelfInfo(rset.getString("DRIVER_SELFINTRO"));
				driverOne.setDriverLicense(rset.getString("DRIVER_LICENSE"));
				driverOne.setDriverBLicense(rset.getString("DRIVER_BLICENSE"));
				driverOne.setDriverInfoImage(rset.getString("DRIVER_INFOIMAGE"));
				driverOne.setDriverArea(rset.getString("DRIVER_AREA"));
				DList.add(driverOne);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return DList;
	}
	
	public String getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
	      int recordTotalCount = totalCount(conn);
	      int pageTotalCount = 0;
	      if(recordTotalCount % recordCountPerPage > 0) {
	         pageTotalCount = recordTotalCount / recordCountPerPage + 1;
	      } else {
	         pageTotalCount = recordTotalCount / recordCountPerPage;
	      }
	      
	      //#?????? ?????? ?????? 
	      if (currentPage < 1) {
	         currentPage = 1;
	      } else if (currentPage > pageTotalCount) {
	         currentPage = pageTotalCount;
	      }
	      //startNavi = ??? ???????????? ?????? ?????? ??????
	      //naviCountPerPage = ??? ????????? ????????? ????????? ?????????(Navi)??? ??????
	      int startNavi = ((currentPage - 1)/ naviCountPerPage) * naviCountPerPage + 1;
	      //endNavi = ??? ????????? ?????? ??? ??????
	      int endNavi = startNavi + naviCountPerPage - 1;
	      
	      //#?????? ?????? ?????? : ?????? endNavi ?????? ??? ??? ???????????? ????????? ??? ?????? ????????????????
	      if (endNavi > pageTotalCount) {
	         endNavi = pageTotalCount;
	      }
	      
	      //prev, next??? ???????????? ?????? ????????? ??????
	      boolean needPrev = true;
	      boolean needNext = true;
	      if(startNavi == 1) {
	         needPrev = false;
	      } 
	      if(endNavi == pageTotalCount) {
	         needNext = false;
	      }
	      
	      StringBuilder sb = new StringBuilder();
	      if(needPrev) {
	         sb.append("<a href='/admin/driverList?currentPage="+(startNavi-1) + "'> < </a>");
	      }
	      // 1~ 10????????? ????????? for?????? ???????????? ???????????? ??????????????? ??????
	      for (int i = startNavi; i <= endNavi; i++) {
	         //i??? ?????? ???????????? ???, ?????? ??????????????? = <b></b>
	         if(i == currentPage) {
	            sb.append("<a href='/admin/driverList?currentPage="+i+"'><b> " + i + " </b></a>");
	         } else { 
	            sb.append("<a href='/admin/driverList?currentPage="+i+"'> " + i + " </a>");
	         }
	      }// ?????? ?????? ?????? ??? ?????? ???, ?????? ????????? ???????????? ??????
	      if (needNext) {
	         sb.append("<a href='/admin/driverList?currentPage=" + (endNavi + 1) + "'> > </a>");
	      }
	      //????????? StringBuilder??? append() ???????????? ???????????? ?????? ??????
	      //toString() ???????????? ???????????? String?????? ???????????? ??????
	      return sb.toString();
	   }
	   
	   public int totalCount(Connection conn) {
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      String query = "SELECT COUNT(*) AS TOTALCOUNT FROM DRIVER";
	      int recordTotalCount = 0;
	      try {
	         pstmt = conn.prepareStatement(query);
	         rset = pstmt.executeQuery();
	         if(rset.next()) {
	            recordTotalCount = rset.getInt("TOTALCOUNT");
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }
	      return recordTotalCount;
	   }
	   public int approveDriver(Connection conn, String userId) {
		   int result=0;
		   PreparedStatement pstmt = null;
		   String query = "UPDATE DRIVER SET DRIVER_CHECK=1 WHERE DRIVER_ID=?";
		   
		   try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			result = pstmt.executeUpdate();
		   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		   }finally {
			   JDBCTemplate.close(pstmt);
		   }
		   return result;
	   }
	   
	   public int kickOut(Connection conn, String userId) {
		   int result = 0;
		   PreparedStatement pstmt = null;
		   String query = "DELETE FROM DRIVER WHERE DRIVER_ID=?";
		   try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		   
		   return result;
	   }
	   
	   public ArrayList<Driver> autoMyInfo(Connection conn, String area, int currentPage, int recordCountPerPage){
		   ArrayList<Driver> list = null;
		   Driver driver = null;
		   PreparedStatement pstmt = null;
		   ResultSet rset = null;
		   String query = "SELECT * FROM (SELECT DRIVER.*, ROW_NUMBER() OVER(ORDER BY DRIVER_ID ASC) AS NUM FROM DRIVER WHERE DRIVER_AREA=? AND DRIVER_CHECK=1)WHERE NUM BETWEEN ? AND ?";
		   
		   int start = currentPage*recordCountPerPage-(recordCountPerPage-1);
		   int end = currentPage*recordCountPerPage;
		   try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, area);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();
			if(rset!=null) {
				list = new ArrayList<Driver>();
				while(rset.next()) {
					driver = new Driver();
					driver.setDriverId(rset.getString("driver_Id"));
					driver.setDriverPwd(rset.getString("driver_Pwd"));
					driver.setDriverName(rset.getString("driver_Name"));
					driver.setDriverPhone(rset.getString("driver_Phone"));
					driver.setDriverEmail(rset.getString("driver_Email"));
					driver.setDriverHome(rset.getString("driver_Home"));
					driver.setDriverRrn(rset.getString("driver_Rrn"));
					driver.setDriverCheck(rset.getString("driver_Check").charAt(0));
					driver.setDriverSelfInfo(rset.getString("driver_SelfIntro"));
					driver.setDriverLicense(rset.getString("driver_License"));
					driver.setDriverLicense_path(rset.getString("driver_License_Path"));
					driver.setDriverBLicense(rset.getString("driver_bLicense"));
					driver.setDriverBLicense_path(rset.getString("driver_bLicense_Path"));
					driver.setDriverInfoImage(rset.getString("driver_InfoImage"));
					driver.setDriverInfoImage_path(rset.getString("driver_InfoImage_Path"));
					driver.setDriverArea(rset.getString("driver_Area"));
					list.add(driver);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		   
		   return list;
	   }
	   
	   public String getPageNaviDriver(Connection conn, String area, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		   int recordTotalCount = totalCount(conn, area); //5
		   
		   int pageTotalCount=0; 
		   
		   if(recordTotalCount%recordCountPerPage>0) { // 5/4 
				pageTotalCount = recordTotalCount/recordCountPerPage +1; //2;
			} else {
				pageTotalCount = recordTotalCount/recordCountPerPage;
			}
		   System.out.println("pageTotalCount = "+pageTotalCount);
		   if(currentPage<1) {
				currentPage=1;
			}else if(currentPage>pageTotalCount) {
				currentPage=pageTotalCount;
			}
		   int startNavi = ((currentPage-1)/naviCountPerPage)*naviCountPerPage+1;
		   System.out.println(startNavi);
		   int endNavi = startNavi+naviCountPerPage-1;
		   System.out.println(endNavi);
		   boolean needPrev = true;
		   boolean needNext = true;
		   
		   if(endNavi>pageTotalCount) {
			   endNavi = pageTotalCount;
		   }
		   
		   if(startNavi==1) {
				needPrev=false;
			}
			if(endNavi==pageTotalCount) {
				needNext=false;
			}
		   StringBuilder sb = new StringBuilder();
		   sb.append("<ul class='pagination' style='width: 250px; margin: 0 auto;'>");
		   if(needPrev) {
			   sb.append("<li class='page-item'><a class='page-link' href='/driver/autoMyinfo?currentPage="+(startNavi-1)+"&area="+area+"'>prev</a></li>");
			   
		   }
		   for(int i=startNavi; i<=endNavi; i++) {
			   if(i==currentPage) {
				   sb.append("<li class='page-item'><a class='page-link' href='/driver/autoMyinfo?currentPage="+i+"&area="+area+"'><b>"+i+"</b></a></li>");
			   }else {
				   sb.append("<li class='page-item'><a class='page-link' href='/driver/autoMyinfo?currentPage="+i+"&area="+area+"'>"+i+"</a></li>");
			   }
		   }
		   if(needNext) {
			   sb.append("<li class='page-item'><a class='page-link'href='/driver/autoMyinfo?currentPage="+(endNavi+1)+"&area="+area+"'>next</a></li>");
		   }
		   sb.append("</ul>");
		   return sb.toString();
	   }
	   public int totalCount(Connection conn, String area) {
		   PreparedStatement pstmt = null;
		   ResultSet rset = null;
		   String query = "SELECT COUNT(*) TOTALCOUNT FROM DRIVER WHERE DRIVER_AREA=? AND DRIVER_CHECK=1";
		   int recordTotalCount = 0;
		   
		   try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, area);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				recordTotalCount  = rset.getInt("TOTALCOUNT");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		   return recordTotalCount;
	   }
	
	   
	   public int updateDriverInfo(Connection conn, Driver driver) {
			int result = 0;
			PreparedStatement pstmt = null;
			String query = "UPDATE DRIVER SET DRIVER_PWD=?, DRIVER_NAME=?, DRIVER_PHONE = ?, DRIVER_EMAIL=?, DRIVER_RRN=?, "
					+ "DRIVER_SELFINTRO = ?, DRIVER_LICENSE = ?,DRIVER_LICENSE_PATH=? , DRIVER_BLICENSE = ?, DRIVER_BLICENSE_PATH=?, DRIVER_INFOIMAGE = ?, "
					+ "DRIVER_INFOIMAGE_PATH=?, DRIVER_AREA = ? WHERE DRIVER_ID = ? ";
		    try {
		    	pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, driver.getDriverPwd());
				pstmt.setString(2, driver.getDriverName());
				pstmt.setString(3, driver.getDriverPhone());
				pstmt.setString(4, driver.getDriverEmail());
				pstmt.setString(5, driver.getDriverRrn());
				pstmt.setString(6, driver.getDriverSelfInfo());
				pstmt.setString(7, driver.getDriverLicense());
				pstmt.setString(8, driver.getDriverLicense_path());
				pstmt.setString(9, driver.getDriverBLicense());
				pstmt.setString(10, driver.getDriverBLicense_path());
				pstmt.setString(11, driver.getDriverInfoImage());
				pstmt.setString(12, driver.getDriverInfoImage_path());
				pstmt.setString(13, driver.getDriverArea());
				pstmt.setString(14, driver.getDriverId());
				result = pstmt.executeUpdate();
		    	
		    } catch (SQLException e) {
		    	e.printStackTrace();
		    }finally {
		    	JDBCTemplate.close(pstmt);
		    }
		    return result;
		}
}

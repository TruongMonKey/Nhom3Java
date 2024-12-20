package Data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
public class DatabaseAcc {
    static Connection con;
    
    // Hàm kết nối đến cơ sở dữ liệu MySQL
    public static Connection getDatabaseAcc() {
        try {
            // Tải driver MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Cố gắng kết nối đến cơ sở dữ liệu
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/btljava?autoReconnect=true&useSSL=false","root","123456");
            return con;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseAcc.class.getName()).log(Level.SEVERE, "MySQL Driver không được tìm thấy!", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAcc.class.getName()).log(Level.SEVERE, "Lỗi kết nối cơ sở dữ liệu!", ex);
        }
        return null;  // Trả về null nếu kết nối không thành công
    }

    // Đảm bảo đóng kết nối sau khi sử dụng
    public static void closeConnection() {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
                System.out.println("Kết nối đã được đóng.");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAcc.class.getName()).log(Level.SEVERE, "Lỗi khi đóng kết nối!", ex);
        }
    }
    
    public static void main(String[] args) {
        Connection conn = getDatabaseAcc();
        if(conn != null) {
            System.out.println("Kết nối thành công");
            closeConnection(); // Đảm bảo đóng kết nối sau khi sử dụng
        }
        else {
            System.out.println("Kết nối thất bại");
        }
    }
}

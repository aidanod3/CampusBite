import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertNotNull;

class MySQLConnectionTest {

    private static final String URL = "jdbc:mysql://localhost:3306/testdb";
    private static final String USER = "testuser";
    private static final String PASSWORD = "testpassword";

    @Test
    void testConnection() throws SQLException {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
            assertNotNull(connection, "Connection should not be null");
            System.out.println("✅ Successfully connected to MySQL!");
        }
    }
}

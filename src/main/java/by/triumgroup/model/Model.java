package by.triumgroup.model;

import by.triumgroup.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class Model {

    private static final String SELECT_ALL_USERS_QUERY
            = "SELECT `id`, `name`, `surname`, `email`, `phone` FROM `test_lab2`.`user`;";
    private static Model instance = new Model();

    public static Model getInstance() {
        return instance;
    }

    public List<User> selectAllUsers() throws ModelException {
        try(Connection connection = createConnection();
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_USERS_QUERY);
            ResultSet resultSet = statement.executeQuery()) {
            List<User> users = new ArrayList<>();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getLong(1));
                user.setName(resultSet.getString(2));
                user.setSurname(resultSet.getString(3));
                user.setEmail(resultSet.getString(4));
                user.setPhone(resultSet.getString(5));

                users.add(user);
            }
            return users;
        } catch (SQLException e) {
            throw new ModelException(e);
        }
    }

    private Connection createConnection() throws ModelException {
        try {
            Class.forName(DatabaseManager.getProperty(DatabaseManager.DRIVER_NAME));
            Properties properties = getDatabaseProperties();
            String url = DatabaseManager.getProperty(DatabaseManager.URL);
            return DriverManager.getConnection(url, properties);
        } catch (ClassNotFoundException | SQLException e) {
            throw new ModelException(e);
        }
    }

    private Properties getDatabaseProperties() {
        Properties properties = new Properties();
        properties.put(DatabaseManager.USER, DatabaseManager.getProperty(DatabaseManager.USER));
        properties.put(DatabaseManager.PASSWORD, DatabaseManager.getProperty(DatabaseManager.PASSWORD));
        properties.put(DatabaseManager.AUTORECONNECT, DatabaseManager.getProperty(DatabaseManager.AUTORECONNECT));
        properties.put(DatabaseManager.ENCODING, DatabaseManager.getProperty(DatabaseManager.ENCODING));
        properties.put(DatabaseManager.USE_UNICODE, DatabaseManager.getProperty(DatabaseManager.USE_UNICODE));
        return properties;
    }

}

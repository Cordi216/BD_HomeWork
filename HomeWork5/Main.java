package org.example;

import com.github.javafaker.Faker;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

public class Main{
    public static void main(String[] args) {
        Connection connection = null;
        PreparedStatement statement = null;
        Faker faker = new Faker();
        try {

            Class.forName("org.postgresql.Driver");

            String url = "jdbc:postgresql://localhost:5432/HHW5";
            String username = "postgres";
            String password = "postgres";

            connection = DriverManager.getConnection(url, username, password);

//            CREATE TABLE users (
//                    id SERIAL PRIMARY KEY,
//                    name VARCHAR(50) NOT NULL,
//                    surname VARCHAR(50) NOT NULL,
//                    patronymic VARCHAR(50),
//                    date_of_birth DATE NOT NULL,
//                    profession VARCHAR(100) NOT NULL,
//                    nationality VARCHAR(40) NOT NULL,
//                    phone_number VARCHAR(20) NOT NULL UNIQUE,
//                    email VARCHAR(100) NOT NULL UNIQUE
//            );

            String query = "INSERT INTO users (name, surname, patronymic, date_of_birth, profession, nationality, phone_number, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            statement = connection.prepareStatement(query);
            for (int i = 0; i < 1001; i++) {
                String name = faker.name().firstName();
                String lastName = faker.name().lastName();
                String patronymic = faker.name().firstName();
                Date birth_date = faker.date().birthday();
                String profession = faker.job().title();
                String nationality = faker.nation().nationality();
                String phone_number = faker.phoneNumber().phoneNumber();
                String email = faker.internet().emailAddress();
                statement.setString(1, name);
                statement.setString(2,lastName);
                statement.setString(3, patronymic);
                java.sql.Date sqlDate = new java.sql.Date(birth_date.getTime());
                statement.setDate(4, sqlDate);
                statement.setString(5, profession);
                statement.setString(6,nationality);
                statement.setString(7,phone_number);
                statement.setString(8,email);
                statement.executeUpdate();
            }
            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
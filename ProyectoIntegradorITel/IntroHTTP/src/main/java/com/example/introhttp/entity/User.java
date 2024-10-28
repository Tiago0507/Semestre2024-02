package com.example.introhttp.entity;
import jakarta.persistence.*;

@Entity // Indica que esta clase representa una tabla en la base de datos
public class User {
    @Id // Indica que es la clave primaria de la tabla
    @GeneratedValue(strategy = GenerationType.AUTO) // El valor del campo ID se generará automáticamente
    private long id;

    private String name;

    private String email;

    private String password;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}



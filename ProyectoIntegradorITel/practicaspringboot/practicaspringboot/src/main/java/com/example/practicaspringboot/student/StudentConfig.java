package com.example.practicaspringboot.student;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDate;
import java.time.Month;
import java.util.List;

@Configuration
public class StudentConfig {

    @Bean
    CommandLineRunner commandLineRunner(StudentRepository repository) {
        return args -> {
            Student santiago = new Student(
                    1L,
                    "Santiago",
                    "svalenciagarcia707@gmail.com",
                    LocalDate.of(2004, Month.JULY, 5)
            );

            Student vanessa = new Student(
                    "Vanessa",
                    "vannev232@gmail.com",
                    LocalDate.of(2002, Month.JULY, 12)
            );

            repository.saveAll(
                    List.of(santiago, vanessa)
            );
        };
    }
}

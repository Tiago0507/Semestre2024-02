package com.example.introhttp.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import repository.UserRepository;

@RestController // Hace que la clase sea accesible por una URL. Es decir, puede recibir solicitudes HTTP y devolver respuestas
// En HTTP se manejan recursos, y siempre que se manejen recursos se hace referencia a URLs
public class EchoController {


    private UserRepository userRepository;

    @Autowired // Permite la inyección de dependencias en Spring
    public UserRepository getUserRepository() {
        return userRepository;
    }


    @GetMapping("echo") // Este método será invocado cuando un cliente haga una solicitud GET a la URL /echo. Es decir,
    // cuando se visita http://localhost:8080/echo, se obtendrá el mensaje de respuesta "Universidad Icesi"
    public String echo() {
        return "Universidad Icesi";
    }

    /* http://localhost:8080/sum?A=12&B=24
    Request Param
    Las variables A y B se extraen de la ruta de la URL. El método sua ambas variables y las muestra en pantalla
    */
    @GetMapping("sum")
    public String sum(@RequestParam("A") int A, @RequestParam("B") int B) {
        return ""+(A+B);
    }

    /* http://localhost:8080/concat/Alfa/Beta
    Path variable
    Las variables se extraen de la URL y luego se concatena el resultado en la pantalla
     */
    @GetMapping("concat/{A}/{B}") // El recurso es concat y las variables son A y B
    public String concat(@PathVariable("A") String A, @PathVariable("B") String B) {
        return A + B;
    }

    // Endpoint
    @GetMapping("secretword")
    // Pass es la variable y con base en lo que se ponga en la variable se muestra el mensaje
    public String secretword(@RequestHeader("pass") String pass) {
        if(pass != null && pass.equals("universidadicesi")) {
            return "La palabra secreta es Telemática";
        }else {
            return "Vuelve a intentarlo";
        }
    }

    /* En este tipo de recursos se usan sustantivos
    Este método respone a solicitudes HTTP POST en la URL /person
    */
    @PostMapping("person")
    /*
    El cuerpo de la solicitud, que probablemente será un JSON, será mapeado a un objeto Person
     */
    public Person addPerson(@RequestBody Person person) {
        person.setId("Alfabetagamma");
        return person;
    }

    @PostMapping
    public ResponseEntity<?> createUser(@RequestBody User user) {
        userRepository.save(user);
        return ResponseEntity.status(201).body("Usuario guardado");
    }

}

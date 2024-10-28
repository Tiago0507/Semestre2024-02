package repository;

import com.example.introhttp.entity.User;
import org.springframework.data.repository.CrudRepository;

// CRUD -> CREATE, READ, UPDATE, DELETE
public interface UserRepository extends CrudRepository<User, Long> {

}

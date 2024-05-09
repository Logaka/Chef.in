package project.chef_in.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import project.chef_in.entity.Receipt;
import java.util.List;

public interface ReceiptRepository extends JpaRepository<Receipt,Integer> {
    List<Receipt> findByName(String name);
}

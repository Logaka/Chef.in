package project.chef_in.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import project.chef_in.entity.Image;
import project.chef_in.entity.Receipt;

import java.util.List;

public interface ImageRepository extends JpaRepository<Image, Integer> {
        List<Image> getImagesByReceiptId(int id);
}

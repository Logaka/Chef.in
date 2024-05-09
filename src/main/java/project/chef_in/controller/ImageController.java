package project.chef_in.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import project.chef_in.entity.Image;
import project.chef_in.repository.ImageRepository;

import java.io.ByteArrayInputStream;


@Controller
@RequiredArgsConstructor
@RequestMapping("images")
public class ImageController {

    private final ImageRepository imageRepository;

    @GetMapping("/{id}")
    public ResponseEntity<?> getImageById(@PathVariable("id") int id){
        Image image = imageRepository.findById(id).stream()
                .findAny().orElse(null);

        return ResponseEntity.ok()
                .header("fileName", image.getOriginalFileName())
                .contentType(MediaType.valueOf(image.getContentType()))
                .contentLength(image.getSize())
                .body(new InputStreamResource(new ByteArrayInputStream(image.getBytes())));
    }
}

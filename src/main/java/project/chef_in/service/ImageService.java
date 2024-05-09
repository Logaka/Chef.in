package project.chef_in.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import project.chef_in.entity.Image;
import project.chef_in.entity.Receipt;
import project.chef_in.repository.ImageRepository;

import java.io.IOException;

@Service
@Slf4j
@RequiredArgsConstructor
public class ImageService {
    private final ImageRepository imageRepository;

    public void saveImage(MultipartFile multipartFile, Receipt receipt) throws IOException {
        imageRepository.save(multipartToImage(multipartFile,receipt));
    }

    private Image multipartToImage(MultipartFile multipartFile, Receipt receipt) throws IOException {
        Image image = new Image();
        image.setName(multipartFile.getName());
        image.setOriginalFileName(multipartFile.getOriginalFilename());
        image.setSize(multipartFile.getSize());
        image.setContentType(multipartFile.getContentType());
        image.setBytes(multipartFile.getBytes());
        image.setReceipt(receipt);

        return image;
    }
}

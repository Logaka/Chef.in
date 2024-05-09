package project.chef_in.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import project.chef_in.entity.Image;
import project.chef_in.entity.Ingredient;
import project.chef_in.entity.Receipt;
import project.chef_in.repository.ImageRepository;
import project.chef_in.service.EmailSender;
import project.chef_in.service.ImageService;
import project.chef_in.service.IngredientService;
import project.chef_in.service.ReceiptService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("receipts")
public class ReceiptController {
    private final ReceiptService receiptService;
    private final IngredientService ingredientService;
    private final ImageService imageService;
    private final ImageRepository imageRepository;
    private final EmailSender emailSender;

    @GetMapping
    public String receipts(@RequestParam(name = "name", required = false) String name, Model model) {
        List<Receipt> receipts = receiptService.receiptList(name);

        for (Receipt receipt : receipts) {
            List<Image> images = imageRepository.getImagesByReceiptId(receipt.getId());
            receipt.setImages(images);
        }
        model.addAttribute("receipts", receipts);
        return "receipts/list";
    }

    @GetMapping("/{id}")
    public String getReceiptById(@PathVariable("id") int id, Model model) {
        model.addAttribute("receipt", receiptService.getReceiptById(id));
        return "receipts/show";
    }

    @GetMapping("/new")
    public String createReceipt(@ModelAttribute("receiptForm") Receipt receipt) {
        return "receipts/addReceipt";
    }

    @PostMapping("/new")
    public String addReceipt(@ModelAttribute("receiptForm") Receipt receipt,
                             @RequestParam("image") MultipartFile multipartFile) throws IOException {

        receiptService.saveReceipt(receipt);
        List<Ingredient> ingredientList = null;
        for (Ingredient ingredient : receipt.getIngredients()) {
            ingredient.setReceipt(receipt);
            ingredientList = new ArrayList<>(Collections.singleton(ingredient));
        }
        ingredientService.saveIngredients(ingredientList);
        imageService.saveImage(multipartFile, receipt);

        return "redirect:/receipts";
    }

    @PostMapping("{id}/delete")
    public String deleteReceipt(@PathVariable("id") int id) {
        receiptService.deleteReceipt(id);
        return "redirect:/receipts";
    }

    @PostMapping("/{id}/send")
    public String sendEmail(@RequestParam("toEmail") String toEmail, @PathVariable("id") int id) {
        String subject = "Send Receipt";
        String body = "Hey Check That /receipts/" + id;
        log.info("toEmail {}", toEmail);
        log.info("body {}", body);
        emailSender.sendEmail(toEmail, subject, body);

        return "redirect:/receipts/" + id;
    }

}

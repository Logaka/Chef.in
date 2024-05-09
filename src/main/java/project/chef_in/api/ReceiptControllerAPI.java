package project.chef_in.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import project.chef_in.entity.Receipt;
import project.chef_in.service.ReceiptService;

import java.util.List;

@RestController
@RequestMapping("/api/receipts")
public class ReceiptControllerAPI {

    @Autowired
    private ReceiptService receiptService;

    @GetMapping
    public List<Receipt> getAllReceipts() {
        return receiptService.getAllReceipts();
    }

    @GetMapping("/{id}")
    public Receipt getReceiptById(@PathVariable("id") int id) {
        return receiptService.getReceiptById(id);
    }

    @PostMapping
    public ResponseEntity<Receipt> createReceipt(@RequestBody Receipt receipt) {
        receiptService.saveReceipt(receipt);
        return ResponseEntity.ok().body(receipt);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteReceipt(@PathVariable("id") int id) {
        receiptService.deleteReceipt(id);
        return ResponseEntity.noContent().build();
    }


}

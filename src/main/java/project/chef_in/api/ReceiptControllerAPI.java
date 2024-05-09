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
    public ResponseEntity<List<Receipt>> getAllReceipts() {
        List<Receipt> receipts = receiptService.getAllReceipts();
        return ResponseEntity.ok().body(receipts);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Receipt> getReceiptById(@PathVariable("id") int id) {
        Receipt receipt = receiptService.getReceiptById(id);
        if (receipt != null) {
            return ResponseEntity.ok().body(receipt);
        } else {
            return ResponseEntity.notFound().build();
        }
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

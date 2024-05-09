package project.chef_in.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import project.chef_in.entity.Receipt;
import project.chef_in.repository.ReceiptRepository;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class ReceiptService {
    private final ReceiptRepository receiptRepository;

    public List<Receipt> receiptList(String name){
        log.info("name {}", name);

        if (name != null) {
            if (!name.isEmpty())
                return receiptRepository.findByName(name);
        }
        return receiptRepository.findAll();
    }

    public List<Receipt> getAllReceipts(){
        return receiptRepository.findAll();
    }

    public Receipt getReceiptById(int id){
        Receipt receipt = receiptRepository.findById(id).stream().findAny().orElse(null);
        log.info("Getting receipt 27 {}", receipt);
        return receipt;
    }
    public void saveReceipt(Receipt receipt){
        log.info("Saving new {}", receipt);
        receiptRepository.save(receipt);
    }
    public void deleteReceipt(int id){
        receiptRepository.deleteById(id);
    }


}

package project.chef_in.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Data
@Entity
@Table(name = "receipts")
@AllArgsConstructor
@NoArgsConstructor
public class Receipt {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name="category")
    private String category;

    @OneToMany(mappedBy = "receipt", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Ingredient> ingredients;

    @OneToMany(mappedBy = "receipt", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Image> images;

    @Column(name = "cooking_guide")
    private String cookingGuide;

    @Column(name = "cooking_time")
    private int cookingTime;

}

package project.chef_in.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Arrays;

@Data
@Entity
@Table(name = "Images")
@AllArgsConstructor
@NoArgsConstructor
public class Image {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name="name", nullable = false)
    private String name;

    @Column(name="original_file_name", nullable = false)
    private String originalFileName;

    @Column(name = "size", nullable = false)
    private Long size;

    @Column(name = "content_type", nullable = false)
    private String contentType;

    @Lob
    @Column(name = "bytes", nullable = false)
    private byte[] bytes;

    @JsonIgnore
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn(name = "receipt_id", referencedColumnName = "id")
    private Receipt receipt;

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", originalFileName='" + originalFileName + '\'' +
                ", size=" + size +
                '}';
    }
}

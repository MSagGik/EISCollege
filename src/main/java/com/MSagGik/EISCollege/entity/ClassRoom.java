package com.MSagGik.EISCollege.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("classroom")
public class ClassRoom implements Serializable {
    @TableId
    private Integer classRoomNO; // номер класса
    private Integer capacity;  // вместимость
    private Integer isMultimedia;  //  наличие мультимедийного оборудования
    private Integer state;  //  статус класса
    private Integer locationNo; // место расположения

    @TableField(exist = false)
    private String locationName; // название места расположения
}

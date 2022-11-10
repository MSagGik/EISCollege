package com.MSagGik.EISCollege.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("location")
public class Location implements Serializable {
    @TableId
    private Integer locationNo; // ID места
    private String locationName;  // название места
}

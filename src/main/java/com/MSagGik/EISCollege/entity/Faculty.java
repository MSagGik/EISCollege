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
@TableName("faculty")
public class Faculty implements Serializable {
    @TableId
    private Integer facultyNO; // # ID факультета
    private String facultyName;  // # название факультета
}

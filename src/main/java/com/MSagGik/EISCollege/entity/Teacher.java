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
@TableName("teacher")
public class Teacher implements Serializable {
    @TableId
    private Integer teacherID; // табельный номер
    private String name;  // имя
    private Integer facultyNO; // факультет

    @TableField(exist = false)
    private String facultyName;  // # название факультета
    private String speciality; // профессиональное направление
    private String title; // должность
}

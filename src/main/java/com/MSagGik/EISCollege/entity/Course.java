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
@TableName("course")
public class Course implements Serializable {
    @TableId
    private Integer courseID; // # ID курса
    private String courseName;  // # название курса
    private Integer hour; // # количество часов
    private Double credit;// # пройдено
}

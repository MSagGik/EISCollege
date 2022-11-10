package com.MSagGik.EISCollege.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("class")
public class Class implements Serializable {
    @TableId
    private Integer classNO; // номер группы
    private Integer facultyNO; // факультет
    private String classShortname; // КРАТКОЕ НАЗВАНИЕ ГРУППЫ

    @TableField(exist = false)
    private String facultyName; // название факультета
    private Integer classSize; // размер группы
//    private String classShortname; // КРАТКОЕ НАЗВАНИЕ ГРУППЫ
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date year;  // год начала
    private Integer counsellorNO;  // куратор

    @TableField(exist = false)
    private String counsellorName; // имя куратора
}

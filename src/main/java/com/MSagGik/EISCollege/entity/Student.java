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
@TableName("student")
public class Student implements Serializable {
    @TableId
    private Integer studentID; // номер студенческого билета
    private String name; // имя
    private Integer sex; // пол

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday; //  день рождения
    private Integer facultyNO; // факультет

    @TableField(exist = false)
    private String facultyName;  // # название факультета
    @TableField(exist = false)
    private String classShortname; // КРАТКОЕ НАЗВАНИЕ ГРУППЫ

    private Integer classNO; // курс
    private String address; //  домашний адрес
    private String phone; //  телефон
    private String remark; // примечание
}

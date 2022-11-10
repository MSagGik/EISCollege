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
@TableName("curriculum")
public class Curriculum implements Serializable { // курс
    @TableId
    private Integer ID; // ID расписания
    private Integer courseNO;  // номер курса

    @TableField(exist = false)
    private String courseName;  // # название курса

    private Integer classNO;  // номер класса
    private Integer teacherID;  // идентификатор учителя

    @TableField(exist = false)
    private String name;  // имя преподавателя
    @TableField(exist = false)
    private String classShortname; // имя группы

    private Integer schoolYear; // учебный год
    private Integer term; // полугодие
//    private Integer startWeek;  // начало недели
    private String startWeek;  // начало недели (текстом)
//    private Integer endWeek;  // конец недели
    private Integer weekday; // день недели
    private Integer section; // раздел
    private Integer locationNo; // место

    @TableField(exist = false)
    private String locationName;  // название места
    private Integer classRoomNO; // аудитория
}

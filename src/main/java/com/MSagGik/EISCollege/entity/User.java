package com.MSagGik.EISCollege.entity;

import com.baomidou.mybatisplus.annotation.IdType;
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
@TableName("user")
public class User implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer id;  // # ID
    private String username; // # имя пользователя
    private String password;  // # пароль
    private Integer type;  // # тип пользователя: 0-студент, 1-преподаватель,  2-администратор
    private Integer disabled;  // # доступ
    private Integer contrastStudentID; // ID студента
    private Integer contrastTeacherID;  // ID преподавателя
    @TableField(exist = false)
    private String contrastStudentName; // имя студента
    @TableField(exist = false)
    private String contrastTeacherName; // имя преподавателя
    @TableField(exist = false)
    private Integer classNO; // соответствующий курс

    @TableField(exist = false)
    private String captcha; // код верификации
}

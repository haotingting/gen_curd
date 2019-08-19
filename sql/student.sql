drop table if exists ANT_STUDENT;

/*==============================================================*/
/* Table: ANT_STUDENT                                           */
/*==============================================================*/
create table ANT_STUDENT
(
   ID                   bigint not null auto_increment comment '主键',
   CODE                 varchar(50) comment '学生编码',
   NAME                 varchar(200) comment '学生姓名',
   BIRTHDAY             datetime comment '学生生日',
   SCORE                integer comment '学生分数',
   AMOUNT               decimal(15,2) comment '学生钱',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_STUDENT comment '企业学生测试表';

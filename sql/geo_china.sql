drop table if exists ANT_GEO_CHINA;

/*==============================================================*/
/* Table: ANT_GEO_CHINA                                         */
/*==============================================================*/
create table ANT_GEO_CHINA
(
   ID                   bigint not null auto_increment comment '主键',
   CODE                 varchar(50) comment '编码',
   NAME                 varchar(500) comment '名称',
   PARENT               varchar(50) comment '父级',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GEO_CHINA comment '国内地理数据';

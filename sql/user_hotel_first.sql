drop table if exists ANT_USER_HOTEL_FIRST;

/*==============================================================*/
/* Table: ANT_USER_HOTEL_FIRST                                  */
/*==============================================================*/
create table ANT_USER_HOTEL_FIRST
(
   ID                   bigint not null auto_increment comment '主键',
   HOTEL_CODE           varchar(50) comment '酒店编码',
   HOTEL_INFO           varchar(500) comment '酒店名称和等级',
   HOTEL_ADDRESS        varchar(500) comment '酒店地址',
   HOTEL_TEL            varchar(500) comment '酒店电话',
   HOTEL_REMARK         text comment '其它说明',
   USER_CODE            varchar(50) comment '用户编码',
   FIRST_ORDER          integer comment '排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_USER_HOTEL_FIRST comment '我的常用库-常用酒店表';

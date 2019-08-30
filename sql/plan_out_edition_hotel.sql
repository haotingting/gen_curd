drop table if exists ANT_PLAN_OUT_EDITION_HOTEL;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_EDITION_HOTEL                            */
/*==============================================================*/
create table ANT_PLAN_OUT_EDITION_HOTEL
(
   ID                   bigint not null auto_increment comment '主键',
   HOTEL_CODE           varchar(50) comment '酒店编码',
   EDITION_CODE         varchar(50) comment '售价组编码',
   CHECK_IN_TIME        integer comment '入住时间-天',
   CHECK_OUT_TIME       integer comment '退房时间-天',
   HOTEL_INFO           varchar(500) comment '酒店名称和等级',
   HOTEL_ADDRESS        varchar(500) comment '酒店地址',
   HOTEL_TEL            varchar(500) comment '酒店电话',
   NIGHTS               integer comment '入住晚数',
   HOTEL_REMARK         varchar(500) comment '其它说明',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_EDITION_HOTEL comment '出境游班期售价组酒店表';

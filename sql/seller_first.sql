drop table if exists ANT_SELLER_FIRST;

/*==============================================================*/
/* Table: ANT_SELLER_FIRST                                      */
/*==============================================================*/
create table ANT_SELLER_FIRST
(
   ID                   bigint not null auto_increment comment '主键',
   SELLER_CODE          varchar(50) comment '优先销售商编码',
   SELLER_ORDER         integer comment '排序码',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_SELLER_FIRST comment '优先销售商';

drop table if exists ANT_GUIDE_VISA;

/*==============================================================*/
/* Table: ANT_GUIDE_VISA                                        */
/*==============================================================*/
create table ANT_GUIDE_VISA
(
   ID                   bigint not null auto_increment comment '主键',
   VISA_CODE            varchar(50) comment '签证编码',
   GUIDE_CODE           varchar(50) comment '导游编码',
   VISA_TYPE            varchar(50) comment '签证类型',
   DISABLED             integer comment '是否禁用 0(false)-否 1(true)-是',
   VISA_EXPIRY_DATE     datetime comment '签证有效期',
   VISA_TIMES           integer comment '入境次数',
   REMARK               text comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GUIDE_VISA comment '导领自备签表';

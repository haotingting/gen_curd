drop table if exists ANT_CHECK_NORMAL;

/*==============================================================*/
/* Table: ANT_CHECK_NORMAL                                      */
/*==============================================================*/
create table ANT_CHECK_NORMAL
(
   ID                   bigint not null auto_increment comment '主键',
   CHECK_CODE           varchar(50) comment '审核编码',
   BUS_CODE             varchar(50) comment '业务编码',
   CATEGORY_CODE        varchar(500) comment '审核分类编码',
   MODULE_CODE          varchar(500) comment '审核模块编码',
   DATA_OLD             text comment '原数据 JSON',
   DATA_NEW             text comment '新数据 JSON',
   UPDATE_ID            varchar(50) comment '修改人-业务',
   UPDATE_TIME          datetime comment '修改时间-业务',
   CHECK_STATUS         integer comment '审核状态 0-未审核 1-审核通过 2-审核拒绝',
   CHECK_ID             varchar(50) comment '审核人',
   CHECK_TIME           datetime comment '审核时间',
   REMARK               varchar(1000) comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_CHECK_NORMAL comment '客户审核普通表';

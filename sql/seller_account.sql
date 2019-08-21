drop table if exists ANT_SELLER_ACCOUNT;

/*==============================================================*/
/* Table: ANT_SELLER_ACCOUNT                                    */
/*==============================================================*/
create table ANT_SELLER_ACCOUNT
(
   ID                   bigint not null auto_increment comment '主键',
   ACCOUNT_CODE         varchar(50) comment '账号编码',
   SELLER_CODE          varchar(50) comment '销售商编码',
   ACC_TYPE             integer comment '账号类型 1-对公账号|与销售商名称对应 2-个人账号 3-境外账号 9-其他',
   BANK                 varchar(200) comment '银行',
   ACC_NUMBER           varchar(50) comment '账号',
   ACC_NAME             varchar(200) comment '开户名称',
   FINA_NUMBER          varchar(50) comment '财务代码',
   DISABLED             integer comment '已关闭 0-否 1-是',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_SELLER_ACCOUNT comment '销售商银行账户表';

drop table if exists ANT_DEPARTMENT;

/*==============================================================*/
/* Table: ANT_DEPARTMENT                                        */
/*==============================================================*/
create table ANT_DEPARTMENT
(
   ID                   bigint not null auto_increment comment '主键',
   DEPT_CODE            varchar(50) comment '部门编码',
   DEPT_NUMBER          varchar(20) comment '部门编号',
   PARENT               varchar(50) comment '上级部门',
   LEVEL                integer comment '部门层级',
   LEVEL_ATTRIBUTE      integer comment '层级属性 1-中心层级 2-部门层级 3-普通层级',
   KIND                 integer comment '部门属性 1-产品部门 2-产品部门|上线供应商 3-销售部门 4-连锁加盟店 5-保障部门',
   NAME                 varchar(50) comment '部门简称',
   EXTERNAL_NAME        varchar(200) comment '对外名称',
   FLAG                 varchar(50) comment '部门标识码',
   INSPECTION           varchar(50) comment '考核部门',
   CASH_FLOW            integer comment '资金流控制 是否独立资金流 0-否 1-是',
   CASH_FLOW_LIMIT      decimal(15,2) comment '资金流限制',
   WEBSITE              varchar(500) comment '独立网址',
   AGENT                integer comment '代理部门 互为代理部门 0-否 1-是',
   PRICE_LEVEL          integer comment '部门结算 1- 一级代理价 2- 二级代理价 3- 指导代理价',
   LOGO                 varchar(200) comment '部门LOGO',
   TITLE                varchar(200) comment '部门文件抬头',
   POSTER_LOGO          varchar(200) comment '海报LOGO',
   DEPT_SEAL            varchar(200) comment '部门签章',
   AGREEMENT_SEAL       varchar(200) comment '部门合同章',
   RECEIPT_SIGN         varchar(200) comment '部门收据章',
   AGREEMENT            varchar(1000) comment '旅游合同 多个以,(逗号)分隔',
   POST_SALE            varchar(1000) comment '投诉售后人 多个以,(逗号)分隔',
   EMG_CONTACT          varchar(1000) comment '紧急联系人 多个以,(逗号)分隔',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_DEPARTMENT comment '企业组织架构表';

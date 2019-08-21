drop table if exists ANT_SELLER;

/*==============================================================*/
/* Table: ANT_SELLER                                            */
/*==============================================================*/
create table ANT_SELLER
(
   ID                   bigint not null auto_increment comment '主键',
   SELLER_CODE          varchar(50) comment '销售商编码',
   FULL_NAME            varchar(500) comment '全称',
   SHORT_NAME           varchar(500) comment '简称',
   FINA_NAME            varchar(500) comment '财务简称',
   NAME_SUFFIX          varchar(500) comment '独立核算部门或负责人',
   FINA_NUMBER          varchar(50) comment '财务代码',
   NEED_AGREEMENT       integer comment '需签分销合同 0-否 1-是',
   QUALIFICATION        integer comment '经营资质 1-国内社 2-出境社 3-出境社（含台湾） 4-境外旅行社 5-加盟门店 6-加盟营业部 6-个人代理 7-公司内部单位 8-其它',
   OUT_AGREEMENT_SEAL_BY integer comment '国内游合同主体 1-销售商自理国内合同|销售商为合同主体 2-我司国内合同|我司为合同主体',
   IN_AGREEMENT_SEAL_BY integer comment '出境游合同主体 1-销售商自理合同出境合同|销售商为合同主体 2-我司出境合同|我司为合同主体',
   BUSINESS_LICENSE     text comment '营业执照 JSON',
   OTHER_LICENSE        text comment '其它资质 JSON',
   DEBIT_LIMIT_AMOUNT   decimal(15,2) comment '欠款额度',
   DAY_LIMIT            integer comment '账期',
   PRICE_LEVEL          integer comment '结算方式 1-以及代理价|返利最多 2-二级代理价|返利居中 9-同业代理价|基础返利',
   RECEIVABLE_TYPE      integer comment '应收款定位 1-订单应收款定位在“销售商结算价” 2-订单应收款定位在“游客金额”，差额退付给销售商（需提供团成本发票）',
   HEAD                 varchar(50) comment '销售商负责人',
   HEAD_READ            text comment '通讯可查阅人 JSON',
   WEBSITE              varchar(500) comment '网址',
   CITY                 varchar(100) comment '所在城市',
   ADDRESS              text comment '联系地址 JSON',
   LEVEL                varchar(500) comment '销售商评级 多个以逗号分隔',
   SPEC_MANAGER         varchar(50) comment '专管员',
   REMARK               varchar(1000) comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_SELLER comment '销售商表';

drop table if exists ANT_PRODUCT_VISA;

/*==============================================================*/
/* Table: ANT_PRODUCT_VISA                                      */
/*==============================================================*/
create table ANT_PRODUCT_VISA
(
   ID                   bigint not null auto_increment comment '主键',
   VISA_CODE            varchar(50) comment '签证编码',
   VISA_ID              varchar(50) comment '签证id(产品id)',
   TARGET_AREA          text comment '签证目的地 JSON',
   VISA_NAME            varchar(500) comment '类别名称',
   CATEGORY             integer comment '类型 1-旅游 2-个人旅游 3-团队旅游 4-商务签证 5-探亲签证 9-其他',
   GEO_TAG              text comment '地理标签 JSON',
   POSTER_IMG           text comment '海报图片 JSON',
   PROCESS_DAYS         integer comment '预计办理天数',
   VALIDITY_PERIOD      varchar(100) comment '有效期',
   MAX_STAY_DAYS        integer comment '最多停留天数',
   ENTER_TIMES          integer comment '入境次数',
   CONSULAR             varchar(500) comment '受理领区',
   REQUIRE_1            integer comment '需要面试/按指纹 0(true)-否 1(false)-是',
   REQUIRE_2            integer comment '需要面试销签/随机 0(true)-否 1(false)-是',
   REQUIRE_3            integer comment '需要护照销签  0(true)-否 1(false)-是',
   STAMP_WAY            integer comment '贴纸签证/另纸签证/其他 1-贴纸(盖章)签证 2-另纸签证 9-其他',
   APP_FORM             text comment '资料申请表',
   VISA_INFO            text comment '签证材料 JSON',
   VISA_PRICE           decimal(15,2) comment '门市售价-签证费',
   SERVICE_PRICE        decimal(15,2) comment '门市售价-服务费',
   WEBSITE_PRICE        decimal(15,2) comment '官网价',
   MEMBER_PRICE         decimal(15,2) comment '会员价',
   GUIDANCE_PRICE       decimal(15,2) comment '指导代理价',
   AGENCY_PRICE_2       decimal(15,2) comment '二级代理价',
   AGENCY_PRICE_1       decimal(15,2) comment '一级代理价',
   ESTIMATED_COST       decimal(15,2) comment '预估成本',
   COST_REMARK          text comment '成本内注',
   PRODUCT_SOURCE       integer comment '产品来源 1-交供应商 2-直采研发 9-其他',
   BROWSE_INNER         integer comment '浏览权限-我司内网  0(false)-否 1(true)-是',
   BROWSE_DISTRIBUTION  integer comment '浏览权限-分销账号  0(false)-否 1(true)-是',
   BROWSE_LINK          integer comment '浏览权限-分销链接   0(false)-否 1(true)-是',
   BROWSE_OFFICIAL      integer comment '浏览权限-官网   0(false)-否 1(true)-是',
   BROWSE_MOBILE        integer comment '浏览权限-手机站   0(false)-否 1(true)-是',
   SALE_TIP             text comment '销售提示',
   VISA_STATUS          integer comment '签证产品状态  0-停用 1-正常',
   UPDATE_ID            varchar(50) comment '更新人',
   UPDATE_TIME          datetime comment '更新日期',
   CHECK_ID             varchar(50) comment '审核人',
   CHECK_STATUS         integer comment '审核状态0-未审 1-待审 2-已审 3-拒审',
   CHECK_TIME           datetime comment '审核时间',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PRODUCT_VISA comment '签证产品表';

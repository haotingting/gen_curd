drop table if exists ANT_PLAN_ORDER_TOURIST;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_TOURIST                                */
/*==============================================================*/
create table ANT_PLAN_ORDER_TOURIST
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_NUMBER         varchar(50) comment '订单号',
   EDITION_CODE         varchar(50) comment '售价组编码',
   PRICE_TYPE           integer comment '计价类型 1-成人 2-成人[无床位|一日游|特殊价] 3-儿童[无床位12岁以内] 4-儿童[含床位12岁以内] 5-婴儿[无床位|无航班]2周岁内 6-单房差 99-其他',
   NAME_CN              varchar(500) comment '游客姓名-中文',
   NAME_EN              varchar(500) comment '游客姓名-英文',
   GENDER               integer comment '游客性别 0-未知 1-男 2-女',
   CERT_TYPE            integer comment '证件类型 1-身份证 2-护照  9-其他',
   CERT_NUMBER          varchar(100) comment '证件号码',
   ISSUE_DATE           datetime comment '签发日期',
   VALID_YEAR           integer comment '有效年份',
   EXPIRE_DATE          datetime comment '有效期截止',
   ISSUE_PLACE          varchar(500) comment '签发地',
   BIRTH_PLACE          varchar(500) comment '出生地',
   NATIONALITY          varchar(500) comment '国籍',
   BIRTHDAY             datetime comment '出生日期',
   OCCUPY_ROOM          integer comment '是否占床 0(false)-否 1(true)-是',
   SERIAL_ROOM          integer comment '房序',
   MOBILE               varchar(50) comment '手机号',
   HEALTH_STATUS        integer comment '健康状态 1-健康 2-老人申明 3-体检 4-未成年人申明',
   CERT_HOLDER          integer comment '证照持有 1-游客自持 2-证照入库 3-证照出库 4-交接领队',
   VISA_INFO            integer comment '签证 1-落地签 2-寄签中 3-已出签 4-被拒签 5-游客自备签',
   IS_MEMBER            integer comment '会员 0(false)-否 1(true)-是',
   IS_CONTRACT_SIGN     integer comment '合同签署人 0(false)-否 1(true)-是',
   IS_DELEGATE          integer comment '是否旅游者代表  0(false)-否 1(true)-是',
   REMARK               varchar(500) comment '用户备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_TOURIST comment '出境游订单游客表';

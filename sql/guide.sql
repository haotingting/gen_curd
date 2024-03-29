drop table if exists ANT_GUIDE;

/*==============================================================*/
/* Table: ANT_GUIDE                                             */
/*==============================================================*/
create table ANT_GUIDE
(
   ID                   bigint not null auto_increment comment '主键',
   GUIDE_CODE           varchar(50) comment '导游编码',
   EMPLOYEE_CODE        varchar(50) comment '员工编码',
   USER_CODE            varchar(50) comment '用户编码',
   DISABLED             integer comment '是否停用 0(false)-否 1(true)-是',
   GUIDE_NUMBER         varchar(50) comment '导游证-证件号码',
   GUIDE_EXPIRY_DATE    datetime comment '导游证-有效期截止',
   GUIDE_QUALIFICATION  text comment '导游证-资质 JSON',
   GUIDE_LEVEL          integer comment '导游证-级别 1-初级 2-中级 3-高级',
   GUIDE_REMARK         text comment '导游证-内注',
   VISA_NUMBER          varchar(50) comment '护照-护照号码',
   VISA_BIRTHDAY        datetime comment '护照-出生日期',
   VISA_BIRTH_PLACE     varchar(1000) comment '护照-出生地点',
   VISA_NATIONNALITY    varchar(1000) comment '护照-出生国籍',
   VISA_ISSUE_DATE      datetime comment '护照-签发日期',
   VISA_YEARS           integer comment '护照-有效期(年)',
   VISA_EXPIRY_DATE     datetime comment '护照-有效期截止',
   VISA_ISSUE_ADDRESS   varchar(1000) comment '护照-签发地点',
   HKMO_NUMBER          varchar(50) comment '港澳通行证-号码',
   HKMO_BIRTHDAY        datetime comment '港澳通行证-出生日期',
   HKMO_BIRTH_PLACE     varchar(1000) comment '港澳通行证-出生地点',
   HKMO_ISSUE_DATE      datetime comment '港澳通行证-签发日期',
   HKMO_YEARS           integer comment '港澳通行证-有效期(年)',
   HKMO_EXPIRY_DATE     datetime comment '港澳通行证-有效期截止',
   HKMO_ISSUE_ADDRESS   varchar(1000) comment '港澳通行证-签发地点',
   TW_NUMBER            varchar(50) comment '台湾通行证-号码',
   TW_BIRTHDAY          datetime comment '台湾通行证-出生日期',
   TW_BIRTH_PLACE       varchar(1000) comment '台湾通行证-出生地点',
   TW_ISSUE_DATE        datetime comment '台湾通行证-签发日期',
   TW_YEARS             integer comment '台湾通行证-有效期(年)',
   TW_EXPIRY_DATE       datetime comment '台湾通行证-有效期截止',
   TW_ISSUE_ADDRESS     varchar(1000) comment '台湾通行证-签发地点',
   ONESELF_CATEGORY     varchar(50) comment '自备签-类别',
   ONESELF_STAY_DAYS    integer comment '自备签-停留天数',
   ONESELF_TIMES        integer comment '自备签-入境次数',
   ONESELF_EXPIRY_DATE  datetime comment '自备签-有效期截止',
   ONESELF_REMARK       text comment '自备签-备注',
   GUIDE_SKILL          text comment '导领特长 JSON',
   COMPANY_RATING       text comment '公司评级 JSON',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GUIDE comment '导游表';

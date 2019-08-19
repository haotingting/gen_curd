drop table if exists ANT_EMPLOYEE;

/*==============================================================*/
/* Table: ANT_EMPLOYEE                                          */
/*==============================================================*/
create table ANT_EMPLOYEE
(
   ID                   bigint not null auto_increment comment '主键',
   CODE                 varchar(50) comment '员工编码',
   NAME                 varchar(200) comment '姓名',
   NAME_EN              varchar(200) comment '英文名字',
   SEX                  integer comment '员工性别 0-未知 1-男 2-女',
   ID_NUMBER            varchar(50) comment '身份证号码',
   BIRTHDAY             datetime comment '生日',
   MOBILE               varchar(50) comment '手机',
   TEL                  varchar(50) comment '座机',
   FAX                  varchar(50) comment '传真',
   EMAIL                varchar(200) comment '邮箱',
   EMG_CONTACT          varchar(200) comment '家属联系',
   EDUCATION            integer comment '最高学历 0-无 1-小学 2-初中 3-高中 4-专科 5-本科 6-硕士 7-博士 8-博士后',
   BLOOD_TYPE           varchar(10) comment '血型 A/B/O/AB',
   NATION               varchar(20) comment '民族',
   SCHOOL               varchar(200) comment '毕业院校',
   OTHER_CERT           varchar(200) comment '其它证书',
   DEPT                 varchar(50) comment '所属部门',
   IS_MANAGER           integer comment '是否本层级负责人 0-否 1-是',
   SOCIAL_SECURITY     varchar(200) comment '社保缴付',
   SOCIAL_SECURITY_BEGIN datetime comment '社保开始',
   SOCIAL_SECURITY_END  datetime comment '社保结束',
   LABOR_CONTRACT_BEGIN datetime comment '劳动合同开始',
   LABOR_CONTRACT_END   datetime comment '劳动合同结束',
   JOB_NUMBER           varchar(50) comment '工号',
   DUTIES               varchar(50) comment '职务',
   POST_LEVEL           varchar(50) comment '岗级',
   JOB_STATUS           integer comment '在职状态 ',
   REWARD               varchar(1000) comment '奖惩记录',
   OTHER_REMARK         varchar(1000) comment '其它备注',
   TOTAL_AMOUNT         decimal(15,2) comment '总数量',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_EMPLOYEE comment '企业员工表';

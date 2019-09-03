drop table if exists ANT_PLAN_OUT_TRIP_VISA;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_TRIP_VISA                                */
/*==============================================================*/
create table ANT_PLAN_OUT_TRIP_VISA
(
   ID                   bigint not null auto_increment comment '主键',
   VISA_CODE            varchar(50) comment '签证编码',
   TRIP_CODE            varchar(50) comment '行程编码',
   AREA                 varchar(100) comment '签证国家(地区)',
   CATEGORY             varchar(500) comment '签证类别',
   TYPE                 integer comment '签证类型 1-旅游 2-个人旅游签证 2-团队旅游签证 3-商务签证 4-探亲签证 9-其他',
   PROCESS_DAYS         integer comment '预计办理天数',
   VALIDITY_PERIOD      varchar(100) comment '有效期',
   MAX_STAY_DAYS        integer comment '最多停留天数',
   ENTER_TIMES          integer comment '入境次数',
   CONSULAR             varchar(500) comment '受理领区',
   REQUIRE_1            integer comment '需要面试/按指纹 0-否 1-是',
   REQUIRE_2            integer comment '需要面试销签/随机 0-否 1-是',
   REQUIRE_3            integer comment '需要护照销签',
   STAMP_WAY            integer comment '贴纸签证/另纸签证/其他 1-贴纸(盖章)签证 2-另纸签证 9-其他',
   VISA_INFO            text comment '签证材料 JSON',
   VISA_ORDER           integer comment '排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_TRIP_VISA comment '出境游行程签证表';

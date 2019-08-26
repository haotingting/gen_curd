drop table if exists ANT_PLAN_OUT_TRIP_DAY;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_TRIP_DAY                                 */
/*==============================================================*/
create table ANT_PLAN_OUT_TRIP_DAY
(
   ID                   bigint not null auto_increment comment '主键',
   DAY_CODE             varchar(50) comment '天数编码',
   TRIP_CODE            varchar(50) comment '行程编码',
   DAY                  integer comment '第几天',
   DEPART               varchar(500) comment '出发地',
   PASSAGE              varchar(1000) comment '途径地',
   DESTINATION          varchar(500) comment '目的地',
   TITLE                varchar(1000) comment '行程标题',
   TRAFFIC_PLANE        integer comment '交通安排-飞机 0(false)--否 1(true)--是',
   TRAFFIC_PLANE_DESC   varchar(1000) comment '交通安排-飞机-参考航班',
   TRAFFIC_PLANE_HOUR   decimal(15,2) comment '交通安排-飞机-小时',
   TRAFFIC_BUS          integer comment '交通安排-汽车 0(false)--否 1(true)--是',
   TRAFFIC_BUS_KM       decimal(15,2) comment '交通安排-汽车-公里',
   TRAFFIC_BUS_HOUR     decimal(15,2) comment '交通安排-汽车-小时',
   TRAFFIC_TRAIN        integer comment '交通安排-火车  0(false)--否 1(true)--是',
   TRAFFIC_TRAIN_HOUR   decimal(15,2) comment '交通安排-火车-小时',
   TRAFFIC_SHIP         integer comment '交通安排-轮船  0(false)--否 1(true)--是',
   TRAFFIC_SHIP_HOUR    decimal(15,2) comment '交通安排-轮船-小时',
   TRAFFIC_OTHER        integer comment '交通安排-其他  0(false)--否 1(true)--是',
   TRAFFIC_OTHER_INFO   varchar(1000) comment '交通安排-其他-说明',
   FOOD_BREAKFAST       integer comment '用餐安排-早餐 1-自理 2-包含',
   FOOD_BREAKFAST_SELF  varchar(500) comment '用餐安排-早餐-自理内容',
   FOOD_BREAKFAST_STANDARD varchar(500) comment '用餐安排-早餐-包含标准',
   FOOD_LUNCH           integer comment '用餐安排-午餐 1-自理 2-包含',
   FOOD_LUNCH_SELF      varchar(500) comment '用餐安排-午餐-自理内容',
   FOOD_LUNCH_STANDARD  varchar(500) comment '用餐安排-午餐-包含标准',
   FOOD_DINNER          integer comment '用餐标准-晚餐 1-自理 2-包含',
   FOOD_DINNER_SELF     varchar(500) comment '用餐标准-晚餐-自理内容',
   FOOD_DINNER_STANDARD varchar(500) comment '用餐标准-晚餐-包含标准',
   HOTEL                integer comment '酒店住宿 1-不含 2-包含',
   HOTEL_SELF           varchar(500) comment '酒店住宿-不含说明',
   HOTEL_STANDARD       varchar(500) comment '酒店住宿-包含标准',
   DAY_DESC             text comment '行程描述',
   DAY_IMG              text comment '行程图片 JSON',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_TRIP_DAY comment '出境游行程天数表表';

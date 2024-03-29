drop table if exists ANT_ENQUIRY;

/*==============================================================*/
/* Table: ANT_ENQUIRY                                           */
/*==============================================================*/
create table ANT_ENQUIRY
(
   ID                   bigint not null auto_increment comment '主键',
   ENQUIRY_NUMBER       varchar(50) comment '询价单号',
   ORDER_NUMBER         varchar(50) comment '订单号',
   ENQUIRY_STATUS       integer comment '询价状态 1-未认领 2-未回复 3-跟进中 4-已成交 5-已丢失',
   ENQUIRY_REASON       text comment '询价原因',
   CATEGORY             integer comment '目的地类别 1-出境 2-国内 3-台湾',
   DEPART_DATE_FROM     datetime comment '计划出发日期-开始',
   DEPART_DATE_TO       datetime comment '计划出发日期-结束',
   DAYS_FROM            integer comment '行程天数-开始',
   DAYS_TO              integer comment '行程天数-结束',
   NIGHTS_REMARK        varchar(500) comment '晚数备注',
   TRIP_TITLE           varchar(2000) comment '产品简述',
   NUMBERS_FROM         integer comment '预计人数-开始',
   NUMBERS_TO           integer comment '预计人数-结束',
   ROOMS_REMARK         varchar(500) comment '房数备注',
   DEPART_CITY          text comment '出发城市 JSON',
   GEO_TAG              text comment '地理标签 JSON',
   TRIP_ATTACHMENT      text comment '行程附件 JSON',
   GROUP_CATEGORY       integer comment '团组信息-成团类型 1-不确定2-散拼 3-单独成团',
   GROUP_GUIDE          integer comment '团组信息-导领信息 1-无导领 2-派导领 3-代理设自派有证导领',
   GROUP_BUDGET_TYPE    integer comment '团组信息-预算类型 1-单人 2-总价',
   GROUP_BUDGET_FROM    decimal(15,2) comment '团组信息-预算金额-开始',
   GROUP_BUDGET_TO      decimal(15,2) comment '团组信息-预算金额-结束',
   GROUP_TRIP_CATEGORY  text comment '团组信息-产品类型1-跟团游2-自由行3-海岛游4-邮轮5-目的地游6-单订票7-单订房8-落地散拼',
   GROUP_PROFIT_TYPE    integer comment '团组信息-目标利润 1-单人2-总价',
   GROUP_PROFIT_FROM    decimal(15,2) comment '团组信息-目标利润-开始',
   GROUP_PROFIT_TO      decimal(15,2) comment '团组信息-目标利润-结束',
   GROUP_TYPE           text comment '团组信息-团组类型 1-散拼 2-整团 3-常规团 4-纯玩团 5-系列团 5-疗休团 9-其他',
   GROUP_TYPE_REMARK    varchar(500) comment '团组信息-团组备注',
   GROUP_SENSITIVE      text comment '团组信息-敏感人群',
   GROUP_TAG            text comment '团组信息-主题标签',
   GROUP_REMARK         text comment '团组信息-更多备注',
   TRAFFIC_CATEGORY     integer comment '交通需求-类型 1-飞机 2-火车 3-邮轮 4-汽车',
   TRAFFIC_REMARK_1     text comment '交通需求-备注1',
   TRAFFIC_REMARK_2     text comment '交通需求-备注2',
   TRAFFIC_REMARK_3     text comment '交通需求-备注3',
   TRAFFIC_REMARK_4     text comment '交通需求-备注4',
   TRAFFIC_REMARK_5     text comment '交通需求-备注5',
   TRAFFIC_SHUTTLE_FLAG integer comment '交通需求-往返接送 0(false)-否 1(true)-是',
   TRAFFIC_SHUTTLE_FROM text comment '交通需求-往返接送-车程-开始',
   TRAFFIC_SHUTTLE_TO   text comment '交通需求-往返接送-车程-结束',
   TRAFFIC_SHUTTLE_CONDITION text comment '交通需求-要求车况',
   TRAFFIC_SHUTTLE_DRIVER text comment '交通需求-要求司机',
   TRAFFIC_BUS_ARRANGE  integer comment '交通需求-游览用车 0(false)-否 1(true)-是',
   TRAFFIC_BUS_ASSIGN   integer comment '交通需求--游览用车-指定车辆 0(false)-否 1(true)-是',
   TRAFFIC_BUS_REMARK   text comment '交通需求-游览用车-指定车型(品牌·座位数)',
   TRAFFIC_BUS_CONDITION text comment '交通需求-游览用车-要求车况',
   TRAFFIC_BUS_DRIVER   text comment '交通需求-游览用车-司机',
   TRAFFIC_APPEND       text comment '交通需求-更多备注',
   HOTEL_STANDARD       text comment '酒店需求-酒店标准 1-准三酒店 2-准四酒店 3-准五酒店 4-网评三星 5-网评四星 6-网评五星 7-挂牌三星 8-挂牌四星 9-挂牌五星 10-当地四星酒店 11-当地五星酒店 12-当地最好酒店 13-国际连锁 14-当地特色',
   HOTEL_ADDRESS        text comment '酒店需求-酒店位置',
   HOTEL_BRAND          text comment '酒店需求-酒店品牌',
   HOTEL_ROOM           text comment '酒店需求-房内要求 1-果盘 2-鲜花3-网络 4-迎宾牌 5-新房布置 9-其他',
   HOTEL_ROOM_REMARK    text comment '酒店需求-房内备注',
   HOTEL_TYPE_ST        integer comment '酒店需求-房型要求-双标',
   HOTEL_TYPE_SK        integer comment '酒店需求-房型要求-大床',
   HOTEL_TYPE_SS        integer comment '酒店需求-房型要求-套房',
   HOTEL_APPEND         text comment '酒店需求-更多备注',
   MEALS_BREAKFAST_IN   integer comment '餐食需求-酒店内早餐 0(false)-否 1(是)-否',
   MEALS_BREAKFAST_IN_REMARK text comment '餐食需求-酒店内早餐备注',
   MEALS_BREAKFAST_OUT  integer comment '餐食需求-酒店外早餐 0(false)-否 1(是)-否',
   MEALS_BREAKFAST_OUT_REMARK text comment '餐食需求-酒店外早餐备注',
   MEALS_BREAKFAST_NO   integer comment '餐食需求-酒店不含早餐 0(false)-否 1(是)-否',
   MEALS_BREAKFAST_NO_REMARK text comment '餐食需求-酒店不含早餐备注',
   MEALS_LUNCH_SELF     integer comment '餐食需求-午餐-自助 0(false)-否 1(是)-否',
   MEALS_LUNCH_PRICE    decimal(15,2) comment '餐食需求-午餐-费用',
   MEALS_LUNCH_TABLE    integer comment '餐食需求-午餐-围桌 0(false)-否 1(是)-否',
   MEALS_DINNER_SELF    integer comment '餐食需求-晚餐-自助 0(false)-否 1(是)-否',
   MEALS_DINNER_TABLE   integer comment '餐食需求-晚餐-围桌 0(false)-否 1(是)-否',
   MEALS_DINNER_PRICE   decimal(15,2) comment '餐食需求-晚餐-费用',
   MEALS_WINE_TYPE      integer comment '餐食需求-酒水标准-1-包含2-现点',
   MEALS_WINE_REMARK    text comment '餐食需求-酒水标准-包含 备注',
   MEALS_WINE_KIND      text comment '餐食需求-酒水标准-酒水种类 1-白酒 2-啤酒3-红酒',
   MEALS_APPEND         text comment '餐食需求-更多备注',
   TRIP_TEXT            text comment '浏览需求-行程要求',
   TRIP_SHOPPING        integer comment '浏览需求-购物安排 1-可进店 2-划店 3-无购物',
   TRIP_SHOPPING_REMARK text comment '浏览需求-购物安排-备注',
   TRIP_SHOPPING_SCENIC text comment '浏览需求-必去景点',
   TRIP_SELF            text comment '浏览需求-自费',
   TRIP_APPEND          text comment '浏览需求-更多备注',
   INVOICE_TYPE         integer comment '发票需求-发票类型 1-综费 2-旅游费 3-代订车 4-代订房 5-代订票 6-疗休养 9-其他',
   INVOICE_COST         integer comment '发票需求-成本发票  0(false)-否 1(是)-否',
   INVOICE_APPEND       text comment '发票需求-更多备注',
   CUSTOMER_NAME        varchar(1000) comment '客户名称',
   CUSTOMER_CODE        varchar(50) comment '客户-客户编码',
   CUSTOMER_CATEGORY    text comment '客户-客户分析 1-新拓展 2-老客户 3-VIP客户 4-重点竞争 5-对价格非常敏感 6-追求质量、体验度为第一要素',
   CUSTOMER_SALES_MAIN  varchar(50) comment '客户-首席销售',
   CUSTOMER_SALES_ASSISTANT varchar(50) comment '客户-销售助手',
   SUBMIT_OP            varchar(50) comment '提交人员',
   SUBMIT_TIME          datetime comment '提交时间',
   ASSIGN_OP            text comment '指定计调',
   TRACK_CUSTOMER       integer comment '协助跟踪客户  0(false)-否 1(是)-否',
   CLAIM_OP             varchar(50) comment '认领计调',
   CLAIM_TIME           datetime comment '认领时间',
   REPLY_OP             varchar(50) comment '回复计调',
   REPLY_TIME           datetime comment '回复时间',
   REPLY_CONTENT        text comment '回复内容',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_ENQUIRY comment '询价单表';

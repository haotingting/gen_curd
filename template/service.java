/**************************************************************************
 * Copyright (c) 2016-2017 Zhejiang TaChao Network Technology Co.,Ltd.
 * All rights reserved.
 *
 * 项目名称：浙江踏潮-基础架构
 * 版权说明：本软件属浙江踏潮网络科技有限公司所有，在未获得浙江踏潮网络科技有限公司正式授权
 *           情况下，任何企业和个人，不能获取、阅读、安装、传播本软件涉及的任何受知
 *           识产权保护的内容。                            
 ***************************************************************************/
package #PACKAFE_NAME#;

import #PACKAGE_RO#.#DOMAIN_NAME#Ro;
import #PACKAGE_SO#.#DOMAIN_NAME#So;

import java.util.List;

/**
 * #TABLE_NAME_CN#服务
 *
 * @author <a href="mailto:dh@zjtachao.com">duhao</a>
 * @since 2.0
 */
public interface #DOMAIN_NAME#Service {
    /**
     * 通过编码查询#TABLE_NAME_CN#
     * @param code
     * @return
     */
    #DOMAIN_NAME#Ro find#DOMAIN_NAME#ByCode(String code);

    /**
     * 查询#TABLE_NAME_CN#数量
     * @param so
     * @return
     */
    Long find#DOMAIN_NAME#Count(#DOMAIN_NAME#So so);

    /**
     * 查询#TABLE_NAME_CN#列表
     * @param so
     * @return
     */
    List<#DOMAIN_NAME#Ro> find#DOMAIN_NAME#List(#DOMAIN_NAME#So so);

    /**
     * 新增#TABLE_NAME_CN#
     * @param ro
     * @return
     */
    void insert#DOMAIN_NAME#(#DOMAIN_NAME#Ro ro);

    /**
     * 修改#TABLE_NAME_CN#
     * @param ro
     * @return
     */
    void update#DOMAIN_NAME#(#DOMAIN_NAME#Ro ro);

    /**
     * 删除#TABLE_NAME_CN#
     * @param code
     * @return
     */
    void delete#DOMAIN_NAME#(String code);
}

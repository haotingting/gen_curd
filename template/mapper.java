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

import #PACKAGE_BEAN#;
import #PACKAGE_SO#;

import java.util.List;

/**
 * #TABLE_NAME_CN#mapper
 *
 * @author <a href="mailto:dh@zjtachao.com">duhao</a>
 * @since 2.0
 */
public interface #DOMAIN_NAME#Mapper {

    /**
     * 通过编码查询#TABLE_NAME_CN#
     * @param so
     * @return
     */
    public #DOMAIN_NAME# find#DOMAIN_NAME#ByCode(#DOMAIN_NAME#So so);

    /**
     * 查询#TABLE_NAME_CN#数量
     * @param so
     * @return
     */
    public Long find#DOMAIN_NAME#Count(#DOMAIN_NAME#So so);

    /**
     * 查询#TABLE_NAME_CN#列表
     * @param so
     * @return
     */
    public List<#DOMAIN_NAME#> find#DOMAIN_NAME#List(#DOMAIN_NAME#So so);

    /**
     * 新增#TABLE_NAME_CN#
     * @param bean
     * @return
     */
    public void insert#DOMAIN_NAME#(#DOMAIN_NAME# bean);

    /**
     * 修改#TABLE_NAME_CN#
     * @param bean
     * @return
     */
    public void update#DOMAIN_NAME#(#DOMAIN_NAME# bean);

    /**
     * 删除#TABLE_NAME_CN#
     * @param bean
     * @return
     */
    public void delete#DOMAIN_NAME#(#DOMAIN_NAME# bean);

}

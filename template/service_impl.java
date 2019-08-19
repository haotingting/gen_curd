/**************************************************************************
 * Copyright (c) 2016-2018 Zhejiang TaChao Network Technology Co.,Ltd.
 * All rights reserved.
 *
 * 项目名称：浙江踏潮-基础项目
 * 版权说明：本软件属浙江踏潮网络科技有限公司所有，在未获得浙江踏潮网络科技有限公司正式授权
 *           情况下，任何企业和个人，不能获取、阅读、安装、传播本软件涉及的任何受知
 *           识产权保护的内容。                            
 ***************************************************************************/
package #PACKAFE_NAME#.impl;

import #PACKAGE_BEAN#.#DOMAIN_NAME#;
import #PACKAGE_RO#.#DOMAIN_NAME#Ro;
import #PACKAGE_SO#.#DOMAIN_NAME#So;
import #PACKAGE_MAPPER#.#DOMAIN_NAME#Mapper;
import #PACKAGE_SERVICE#.#DOMAIN_NAME#Service;
import com.zjtachao.fish.water.common.base.context.WaterBootCommonContext;
import com.zjtachao.fish.water.common.data.WaterDozer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 *  #TABLE_NAME_CN#服务
 *
 * @author <a href="mailto:dh@zjtachao.com">duhao</a>
 * @since 2.0
 */
@Service
public class #DOMAIN_NAME#ServiceImpl implements #DOMAIN_NAME#Service {

    /** mapper **/
    @Autowired
    private #DOMAIN_NAME#Mapper #DOMAIN_NAME_LOWER#Mapper;

    /** 转换 **/
    @Autowired
    private WaterDozer waterDozer;


    /**
     * 通过编码查询#TABLE_NAME_CN#
     * @param code
     * @return
     */
    public #DOMAIN_NAME#Ro find#DOMAIN_NAME#ByCode(String code){
        #DOMAIN_NAME#So so = new #DOMAIN_NAME#So();
        so.setCode(code);
        #DOMAIN_NAME# bean = #DOMAIN_NAME_LOWER#Mapper.find#DOMAIN_NAME#ByCode(so);
        #DOMAIN_NAME#Ro ro = waterDozer.convert(bean, #DOMAIN_NAME#Ro.class);
        return ro;
    }

    /**
     * 查询#TABLE_NAME_CN#数量
     * @param so
     * @return
     */
    public Long find#DOMAIN_NAME#Count(#DOMAIN_NAME#So so){
        Long result = #DOMAIN_NAME_LOWER#Mapper.find#DOMAIN_NAME#Count(so);
        return result;
    }

    /**
     * 查询#TABLE_NAME_CN#列表
     * @param so
     * @return
     */
    public List<#DOMAIN_NAME#Ro> find#DOMAIN_NAME#List(#DOMAIN_NAME#So so){
        List<#DOMAIN_NAME#> beanList = #DOMAIN_NAME_LOWER#Mapper.find#DOMAIN_NAME#List(so);
        List<#DOMAIN_NAME#Ro> roList = waterDozer.convertList(beanList, #DOMAIN_NAME#Ro.class);
        return roList;
    }

    /**
     * 新增#TABLE_NAME_CN#
     * @param ro
     * @return
     */
    public void insert#DOMAIN_NAME#(#DOMAIN_NAME#Ro ro){
        #DOMAIN_NAME# bean = waterDozer.convert(ro, #DOMAIN_NAME#.class);
        Date date = new Date();
        bean.setCreateTime(date);
        bean.setModifyTime(date);
        bean.setDeleteFlag(WaterBootCommonContext.DeleteFlagContext.DELETE_NO.getCode());
        #DOMAIN_NAME_LOWER#Mapper.insert#DOMAIN_NAME#(bean);
    }

    /**
     * 修改#TABLE_NAME_CN#
     * @param ro
     * @return
     */
    public void update#DOMAIN_NAME#(#DOMAIN_NAME#Ro ro){
        #DOMAIN_NAME# bean = waterDozer.convert(ro, #DOMAIN_NAME#.class);
        Date date = new Date();
        bean.setModifyTime(date);
        bean.setDeleteFlag(WaterBootCommonContext.DeleteFlagContext.DELETE_NO.getCode());
        #DOMAIN_NAME_LOWER#Mapper.update#DOMAIN_NAME#(bean);
    }

    /**
     * 删除#TABLE_NAME_CN#
     * @param code
     * @return
     */
    public void delete#DOMAIN_NAME#(String code){
        #DOMAIN_NAME# bean = new #DOMAIN_NAME#();
        bean.setCode(code);
        Date date = new Date();
        bean.setModifyTime(date);
        bean.setDeleteFlag(WaterBootCommonContext.DeleteFlagContext.DELETE_NO.getCode());
        #DOMAIN_NAME_LOWER#Mapper.delete#DOMAIN_NAME#(bean);
    }
}

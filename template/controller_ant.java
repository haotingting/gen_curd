/**************************************************************************
 * Copyright (c) 2016-2018 Zhejiang TaChao Network Technology Co.,Ltd.
 * All rights reserved.
 *
 * 项目名称：浙江踏潮-基础项目
 * 版权说明：本软件属浙江踏潮网络科技有限公司所有，在未获得浙江踏潮网络科技有限公司正式授权
 *           情况下，任何企业和个人，不能获取、阅读、安装、传播本软件涉及的任何受知
 *           识产权保护的内容。                            
 ***************************************************************************/
package #PACKAFE_NAME#;

import com.alibaba.fastjson.JSON;
import #PACKAGE_RO#.#DOMAIN_NAME#Ro;
import #PACKAGE_SO#.#DOMAIN_NAME#So;
import #PACKAGE_SERVICE#.#DOMAIN_NAME#Service;
import com.zjtachao.fish.ant.common.util.AntResultBean;
import com.zjtachao.fish.water.common.base.bean.WaterBootResultBean;
import com.zjtachao.fish.water.common.base.bean.WaterBootValidateBean;
import com.zjtachao.fish.water.common.base.context.WaterBootResultContext;
import com.zjtachao.fish.water.common.base.controller.WaterBootBaseController;
import com.zjtachao.fish.water.common.tool.WaterUUIDUtil;
import com.zjtachao.fish.water.common.tool.WaterValidateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * #TABLE_NAME_CN#管理
 *
 * @author <a href="mailto:dh@zjtachao.com">duhao</a>
 * @since 2.0
 */
@Controller
@Path("/admin/system/employee")
public class #DOMAIN_NAME#Controller extends WaterBootBaseController {

    /** 员工服务 **/
    @Autowired
    private #DOMAIN_NAME#Service #DOMAIN_NAME_LOWER#Service;

    /**
     * 产品文档单条数据
     *
     * @param code
     * @return
     */
    @GET
    @Path("/query/single/{code}")
    @Produces(MediaType.APPLICATION_JSON)
    public WaterBootResultBean<#DOMAIN_NAME#Ro> queryByCode(@PathParam("code")String code) {
        WaterBootResultBean<#DOMAIN_NAME#Ro> result = new WaterBootResultBean<#DOMAIN_NAME#Ro>();
        try {
            #DOMAIN_NAME#Ro ro = #DOMAIN_NAME_LOWER#Service.find#DOMAIN_NAME#ByCode(code);
            result.setRst(ro);
            result.setCode(WaterBootResultContext.ResultCode.SUCCESS.getCode());
            result.setMsg("查询成功");

        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            result.setCode(WaterBootResultContext.ResultCode.ERROR.getCode());
            result.setMsg("未知错误");
        }
        return result;
    }

    /**
     * 查询列表
     *
     * @param json
     * @return
     */
    @POST
    @Path("/query/list")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces(MediaType.APPLICATION_JSON)
    public AntResultBean<#DOMAIN_NAME#Ro> queryList(String json) {
        AntResultBean<#DOMAIN_NAME#Ro> result = new AntResultBean<#DOMAIN_NAME#Ro>();
        try {
            boolean flag = true;
            String msg = null;
            if (null != json && !"".equals(json)) {
                #DOMAIN_NAME#So so = JSON.parseObject(json , #DOMAIN_NAME#So.class);
                if(null == so){
                    flag = false;
                    msg = "参数格式有误";
                }
                if(flag){
                    so.setPageIndex(so.getPageNo());
                    Long count = #DOMAIN_NAME_LOWER#Service.find#DOMAIN_NAME#Count(so);
                    List<#DOMAIN_NAME#Ro> #DOMAIN_NAME_LOWER#List = null;
                    if(count.longValue() > 0){
                        so.setDataCount(count);
                        #DOMAIN_NAME_LOWER#List = #DOMAIN_NAME_LOWER#Service.find#DOMAIN_NAME#List(so);
                    }
                    result.setResult(#DOMAIN_NAME_LOWER#List, so.getPageSize(), so.getPageIndex(), so.getDataCount());
                    result.setCode(WaterBootResultContext.ResultCode.SUCCESS.getCode());
                    result.setMsg("查询成功");
                }
            } else {
                flag = false;
                msg = "参数有误";
            }
            if(!flag){
                result.setMsg(msg);
            }
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            result.setCode(WaterBootResultContext.ResultCode.ERROR.getCode());
            result.setMsg("服务器出错");
        }
        return result;
    }


    /**
     * 新增
     *
     * @param json
     * @return
     */
    @POST
    @Path("/add")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces(MediaType.APPLICATION_JSON)
    public WaterBootResultBean<#DOMAIN_NAME#Ro> add(String json) {
        WaterBootResultBean<#DOMAIN_NAME#Ro> result = new WaterBootResultBean<#DOMAIN_NAME#Ro>();
        try {
            String msg = null;
            #DOMAIN_NAME#Ro ro = null;
            if (null != json && !"".equals(json)) {
                ro = JSON.parseObject(json, #DOMAIN_NAME#Ro.class);
                WaterBootValidateBean bean = validateBean(ro , true);
                if(bean.isFlag()){
                    ro.setCode(WaterUUIDUtil.getUUID());
                    #DOMAIN_NAME_LOWER#Service.insert#DOMAIN_NAME#(ro);
                    result.setCode(WaterBootResultContext.ResultCode.SUCCESS.getCode());
                    msg = "添加成功";
                }else {
                    msg = bean.getMsg();
                }
            } else {
                msg = "参数有误";
            }
            result.setMsg(msg);
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            result.setCode(WaterBootResultContext.ResultCode.ERROR.getCode());
            result.setMsg("未知错误");
        }
        return result;
    }

    /**
     * 更新
     *
     * @param json
     * @return
     */
    @POST
    @Path("/update")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces(MediaType.APPLICATION_JSON)
    public WaterBootResultBean<#DOMAIN_NAME#Ro> update(String json) {
        WaterBootResultBean<#DOMAIN_NAME#Ro> result = new WaterBootResultBean<#DOMAIN_NAME#Ro>();
        try {
            String msg = null;
            #DOMAIN_NAME#Ro ro = null;
            if (null != json && !"".equals(json)) {
                ro = JSON.parseObject(json, #DOMAIN_NAME#Ro.class);
                WaterBootValidateBean bean = validateBean(ro , false);
                if(bean.isFlag()){
                    //修改
                    #DOMAIN_NAME_LOWER#Service.update#DOMAIN_NAME#(ro);
                    result.setCode(WaterBootResultContext.ResultCode.SUCCESS.getCode());
                    msg = "修改成功";
                }else {
                    msg = bean.getMsg();
                }
            } else {
                msg = "参数有误";
            }
            result.setMsg(msg);
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            result.setCode(WaterBootResultContext.ResultCode.ERROR.getCode());
            result.setMsg("未知错误");
        }
        return result;
    }

    /**
     * 删除
     *
     * @param code
     * @return
     */
    @GET
    @Path("/delete/{code}")
    @Produces(MediaType.APPLICATION_JSON)
    public WaterBootResultBean<#DOMAIN_NAME#Ro> delete(@PathParam("code")String code) {
        WaterBootResultBean<#DOMAIN_NAME#Ro> result = new WaterBootResultBean<#DOMAIN_NAME#Ro>();
        try {
            //查询下面是否存在产品
            #DOMAIN_NAME#Ro ro = #DOMAIN_NAME_LOWER#Service.find#DOMAIN_NAME#ByCode(code);
            if(null != ro){
                #DOMAIN_NAME_LOWER#Service.delete#DOMAIN_NAME#(code);
                result.setCode(WaterBootResultContext.ResultCode.SUCCESS.getCode());
                result.setMsg("删除成功");
            }else {
                result.setMsg("数据不存在");
            }
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            result.setCode(WaterBootResultContext.ResultCode.ERROR.getCode());
            result.setMsg("未知错误");
        }
        return result;
    }

    /**
     * 验证
     * @param ro
     * @return
     */
    private WaterBootValidateBean validateBean(#DOMAIN_NAME#Ro ro , boolean isAdd) {
        boolean flag = true;
        String msg = null;

        if(null == ro){
            flag = false;
            msg = "参数有误";
        }

#VALIDATE_LIST#
        WaterBootValidateBean bean = new WaterBootValidateBean(flag , msg);
        return bean;
    }


}

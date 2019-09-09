#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os

# 处理sql
def read_sql(file_path):
    # 表名
    table_name = ''
    # 表名中文
    table_name_cn = ''
    # 字段列表
    column_list = []
    with open(file_path, 'r') as fr:
        count = 0
        start = 0
        end = 0
        for line in fr:
            if line.find('create table') >= 0:
                table_name = line.replace('create table', '').strip()
                start = count + 2
            elif line.find('alter table') >= 0:
                index = line.find('comment') + 7
                table_name_cn = line[index:].replace('\'', '').replace(';', '').strip()
            elif line.find('CREATE_TIME') >= 0:
                end = count
            else:
                if 0 < start <= count and end == 0:
                    cell_array = line.replace('\'', '').replace(',', '').replace(';', '').strip().split(' ')
                    cal_array = []
                    index = 0
                    comment = 0
                    text = ''
                    for cell in cell_array:
                        if None != cell and '' != cell:
                            if index <= 1:
                                cal_array.append(cell)
                            elif cell == 'comment':
                                comment = index
                            else:
                                if comment > 0:
                                    text = text + cell
                            index += 1
                    cal_array.append(text)
                    column_list.append(cal_array)
            count += 1

    property_list = column_info(column_list)

    return table_name, table_name_cn, property_list


# 处理列
def column_info(column_list):
    property_list = []
    for column in column_list:
        column_name = column[0]
        column_type = column[1]
        column_comment = column[2]

        property_name = handel_name(column_name)
        property_type, property_len = handel_type(column_type)

        info = {
            'column_name': column_name,
            'column_comment': column_comment,
            'column_type': column_type,
            'property_name': property_name,
            'property_type': property_type,
            'property_len': property_len
        }
        property_list.append(info)
    return property_list


# 处理骆驼命名法
def handel_name(column_name):
    property_name = ''
    lower = column_name.lower()
    if lower.find('_') >= 0:
        flag = False
        for c in lower:
            if c == '_':
                flag = True
            else:
                if flag:
                    c = c.upper()
                    flag = False
                property_name += c
    else:
        property_name = lower
    return property_name


# 处理java类型
def handel_type(column_type):
    property_type = ''
    property_len = 0
    if column_type.find('bigint') >= 0:
        property_type = 'Long'
    elif column_type.find('integer') >= 0:
        property_type = 'Integer'
    elif column_type.find('datetime') >= 0:
        property_type = 'Date'
    elif column_type.find('varchar') >= 0:
        property_type = 'String'
        length = column_type.replace('varchar', '').replace('(', '').replace(')', '')
        property_len = int(length)
    elif column_type.find('text') >= 0:
        property_type = 'String'
    elif column_type.find('decimal') >= 0:
        property_type = 'BigDecimal'

    return property_type, property_len

# 处理java文件名
def handel_java_name(table_name):
    java_name = ''
    table_name = table_name.lower()
    index = 0
    flag = False
    for c in table_name:
        k = ''
        if index == 0:
            k = c.upper()
        elif c == '_':
            flag = True
        else:
            if flag:
                k = c.upper()
                flag = False
            else:
                k = c
        java_name += k
        index += 1
    return java_name

# 生成property名
def handel_property_get(name):
    get = 'get'
    for i,c in enumerate(name):
        if i == 0:
            get += c.upper()
        else:
            get += c
    return get+'()'

# 生成property名
def handel_property_upper(name):
    result = ''
    for i,c in enumerate(name):
        if i == 0:
            result += c.upper()
        else:
            result += c
    return result


# 生成domain
def java_domain(project_path, package_name, java_name, table_name, table_name_cn, property_list):
    f = open('template/domain.java','r')
    source = f.read()
    #包名
    source = source.replace('#PACKAFE_NAME#',package_name)
    #类名
    source = source.replace('#DOMAIN_NAME#', java_name)
    #注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)
    # 附加
    import_info = ''
    import_set = set()
    #生成类的属性
    property_info = ''
    for property in property_list:
        property_info += '\t/** '+property['column_comment']+' **/\n'
        property_info += '\t@Getter\n'
        property_info += '\t@Setter\n'
        property_info += '\tprivate '+property['property_type']+' '+property['property_name']+';\n\n'
        if property['property_type'] == 'BigDecimal' or property['property_type'] == 'Date' :
            import_set.add(property['property_type'])

    # 导入包
    for info in import_set:
        if info == 'Date':
            import_info += 'import java.util.Date;\n'
        elif info == 'BigDecimal':
            import_info += 'import java.math.BigDecimal;\n'

    # IMPORT_INFO#
    source = source.replace('#IMPORT_INFO#', import_info)
    # 属性
    source = source.replace('#PROPERTY_LIST#', property_info)

    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    #写入文件
    with open(folder_path+'/'+java_name+'.java', 'w') as f:  # 设置文件对象
        f.write(source)

# 生成domain
def java_ro(project_path, package_name, java_name, table_name, table_name_cn, property_list):
    f = open('template/ro.java','r')
    source = f.read()
    #包名
    source = source.replace('#PACKAFE_NAME#',package_name)
    #类名
    source = source.replace('#DOMAIN_NAME#', java_name+'Ro')
    #注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)
    # 附加
    import_info = ''
    import_set = set()
    #生成类的属性
    property_info = ''
    for property in property_list:
        property_info += '\t/** '+property['column_comment']+' **/\n'
        property_info += '\t@Getter\n'
        property_info += '\t@Setter\n'
        property_info += '\tprivate '+property['property_type']+' '+property['property_name']+';\n\n'
        if property['property_type'] == 'BigDecimal' or property['property_type'] == 'Date' :
            import_set.add(property['property_type'])

    # 导入包
    for info in import_set:
        if info == 'Date':
            import_info += 'import java.util.Date;\n'
        elif info == 'BigDecimal':
            import_info += 'import java.math.BigDecimal;\n'

    # IMPORT_INFO#
    source = source.replace('#IMPORT_INFO#', import_info)
    # 属性
    source = source.replace('#PROPERTY_LIST#', property_info)

    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    #写入文件
    with open(folder_path+'/'+java_name+'Ro.java', 'w') as f:  # 设置文件对象
        f.write(source)


# 生成so
def java_so(project_path, package_name, java_name, table_name, table_name_cn, property_list):
    f = open('template/so.java','r')
    source = f.read()
    #包名
    source = source.replace('#PACKAFE_NAME#',package_name)
    #类名
    source = source.replace('#DOMAIN_NAME#', java_name+'So')
    #注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)
    # 附加
    property_info = ''
    index = 0
    for property in property_list:
        if index == 1:
            property_info += '\t/** ' + property['column_comment'] + ' **/\n'
            property_info += '\t@Getter\n'
            property_info += '\t@Setter\n'
            property_info += '\tprivate ' + property['property_type'] + ' ' + property['property_name'] + ';'
            break
        index += 1

    # 属性
    source = source.replace('#PROPERTY_LIST#', property_info)

    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    #写入文件
    with open(folder_path+'/'+java_name+'So.java', 'w') as f:  # 设置文件对象
        f.write(source)

# 生成so
def java_so_ant(project_path, package_name, java_name, table_name, table_name_cn, property_list):
    f = open('template/so_ant.java','r')
    source = f.read()
    #包名
    source = source.replace('#PACKAFE_NAME#',package_name)
    #类名
    source = source.replace('#DOMAIN_NAME#', java_name+'So')
    #注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)
    # 附加
    property_info = ''
    index = 0
    for property in property_list:
        if index == 1:
            property_info += '\t/** ' + property['column_comment'] + ' **/\n'
            property_info += '\t@Getter\n'
            property_info += '\t@Setter\n'
            property_info += '\tprivate ' + property['property_type'] + ' ' + property['property_name'] + ';'
            break
        index += 1

    # 属性
    source = source.replace('#PROPERTY_LIST#', property_info)

    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    #写入文件
    with open(folder_path+'/'+java_name+'So.java', 'w') as f:  # 设置文件对象
        f.write(source)

# 生成mapper
def java_mapper(project_path, package_name, java_name, table_name_cn, path_bean, path_so):
    f = open('template/mapper.java','r')
    source = f.read()
    #包名
    source = source.replace('#PACKAFE_NAME#',package_name)
    #类名
    source = source.replace('#DOMAIN_NAME#', java_name)
    #注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)

    #包名
    source = source.replace('#PACKAGE_BEAN#', path_bean+'.'+java_name)
    #包名
    source = source.replace('#PACKAGE_SO#', path_so+'.'+java_name+'So')

    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    #写入文件
    with open(folder_path+'/'+java_name+'Mapper.java', 'w') as f:  # 设置文件对象
        f.write(source)


# 生成mybatis
def java_mybatis(project_path, java_name, table_name, path_bean, path_so, path_mapper,property_list):
    f = open('template/mybatis.xml','r')
    source = f.read()
    #mapper
    source = source.replace('#PACKAGE_MAPPER#',path_mapper)
    #bean
    source = source.replace('#PACKAGE_BEAN#',path_bean)
    #so
    source = source.replace('#PACKAGE_SO#',path_so)
    #类名
    source = source.replace('#DOMAIN_NAME#', java_name)

    #包名
    source = source.replace('#PACKAGE_BEAN#', path_bean+'.'+java_name)
    #包名
    source = source.replace('#PACKAGE_SO#', path_so+'.'+java_name+'So')

    #表名
    source = source.replace('#TABLE_NAME_LOWER#', table_name.lower())

    #lower_name
    lower_name = ''
    lower_index = 0
    for c in java_name:
        if lower_index == 0:
            lower_name += c.lower()
        else:
            lower_name += c
        lower_index += 1
    source = source.replace('#DOMAIN_NAME_LOWER#', lower_name)


    #字段映射
    column_info_list = ''
    column_name_list = ''

    unique_code_name = ''
    unique_code_column = ''

    add_code_name = ''
    add_code_column = ''

    update_code_name = ''

    unique_code_upper = ''

    column_info_index = 0
    for column in property_list:
        if column_info_index != 0:
            column_info_list += '\t\t<result column="'+column['column_name']+'" property="'+column['property_name']+'"  />\n'
            column_name_list += column['column_name'] +','
            add_code_name += '#{'+column['property_name'] + '},'
            add_code_column += column['column_name'] +','

        if column_info_index == 1:
            unique_code_name = column['property_name']
            unique_code_column = column['column_name']

        if column_info_index > 1:
            update_code_name += '\t\t'+column['column_name'] + ' = ' + '#{' + column['property_name'] + '},\n'

        column_info_index += 1
    source = source.replace('#COLUMN_INFO_LIST#', column_info_list)
    source = source.replace('#COLUMN_NAME_LIST#', column_name_list)
    source = source.replace('#UNIQUE_CODE_NAME#', unique_code_name)
    source = source.replace('#UNIQUE_CODE_COLUMN#', unique_code_column)
    source = source.replace('#ADD_CODE_NAME#', add_code_name)
    source = source.replace('#ADD_CODE_COLUMN#', add_code_column)
    source = source.replace('#UPDATE_CODE_NAME#', update_code_name)
    source = source.replace('#UNIQUE_CODE_UPPER#', unique_code_upper)


    folder_path = project_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    #写入文件
    with open(folder_path+'/'+table_name.lower()+'.xml', 'w') as f:  # 设置文件对象
        f.write(source)


# 生成service
def java_service(project_path, package_name, java_name, table_name_cn, domain_name, ro_name,so_name,mapper_name,property_list):
    f = open('template/service_impl.java','r')
    source = f.read()
    #包名
    source = source.replace('#PACKAFE_NAME#',package_name)
    #类名
    source = source.replace('#DOMAIN_NAME#', java_name)
    #注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)

    unique_code_upper = ''

    for index,property in enumerate(property_list):
        if index == 1:
            unique_code_name = property['property_name']
            unique_code_upper = handel_property_upper(unique_code_name)


    #包名
    source = source.replace('#PACKAGE_BEAN#', domain_name)
    source = source.replace('#PACKAGE_RO#', ro_name)
    source = source.replace('#PACKAGE_SO#', so_name)
    source = source.replace('#PACKAGE_MAPPER#', mapper_name)
    source = source.replace('#PACKAGE_SERVICE#', package_name)
    source = source.replace('#UNIQUE_CODE_UPPER#', unique_code_upper)


    lower_index = 0
    domain_name_lower = ''
    for c in java_name:
        if lower_index == 0:
            domain_name_lower += c.lower()
        else:
            domain_name_lower += c
        lower_index += 1
    source = source.replace('#DOMAIN_NAME_LOWER#', domain_name_lower)

    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path + '/impl'

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    #写入文件
    with open(folder_path+'/'+java_name+'ServiceImpl.java', 'w') as f:  # 设置文件对象
        f.write(source)


# 生成inter
def java_inter(project_path, package_name, java_name, table_name_cn, domain_name, ro_name, so_name, mapper_name):
    f = open('template/service.java', 'r')
    source = f.read()
    # 包名
    source = source.replace('#PACKAFE_NAME#', package_name)
    # 类名
    source = source.replace('#DOMAIN_NAME#', java_name)
    # 注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)

    # 包名
    source = source.replace('#PACKAGE_BEAN#', domain_name)
    source = source.replace('#PACKAGE_RO#', ro_name)
    source = source.replace('#PACKAGE_SO#', so_name)
    source = source.replace('#PACKAGE_MAPPER#', mapper_name)
    source = source.replace('#PACKAGE_SERVICE#', package_name)

    lower_index = 0
    domain_name_lower = ''
    for c in java_name:
        if lower_index == 0:
            domain_name_lower += c.lower()
        else:
            domain_name_lower += c
        lower_index += 1
    source = source.replace('#DOMAIN_NAME_LOWER#', domain_name_lower)

    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    # 写入文件
    with open(folder_path + '/' + java_name + 'Service.java', 'w') as f:  # 设置文件对象
        f.write(source)

# 生成controller
def java_controller(project_path, package_name, java_name, table_name_cn, domain_name, ro_name, so_name, mapper_name,service_name, property_list):
    f = open('template/controller.java', 'r')
    source = f.read()
    # 包名
    source = source.replace('#PACKAFE_NAME#', package_name)
    # 类名
    source = source.replace('#DOMAIN_NAME#', java_name)
    # 注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)

    # 包名
    source = source.replace('#PACKAGE_BEAN#', domain_name)
    source = source.replace('#PACKAGE_RO#', ro_name)
    source = source.replace('#PACKAGE_SO#', so_name)
    source = source.replace('#PACKAGE_MAPPER#', mapper_name)
    source = source.replace('#PACKAGE_SERVICE#', service_name)

    lower_index = 0
    domain_name_lower = ''
    for c in java_name:
        if lower_index == 0:
            domain_name_lower += c.lower()
        else:
            domain_name_lower += c
        lower_index += 1
    source = source.replace('#DOMAIN_NAME_LOWER#', domain_name_lower)

    # 生成验证
    validate_list = ''
    for index,property in enumerate(property_list):
        get = handel_property_get(property['property_name'])
        if index == 0:
            pass
        elif index == 1:
            item = '\t\tif(flag && !isAdd && (null == ro.'+get+' || !WaterValidateUtil.validateMd5Pwd(ro.'+get+'))){\n'
            item += '\t\t\tflag = false;\n'
            item += '\t\t\tmsg = "'+property['column_comment']+'有误";\n'
            item += '\t\t}\n\n'
            validate_list += item
        else:
           if property['property_type'] == 'String':
               length = int(property['property_len']/2)
               item = '\t\tif(flag && (null != ro.'+get+' && ro.'+get+'.length() > '+str(length)+')){\n'
               item += '\t\t\tflag = false;\n'
               item += '\t\t\tmsg = "'+property['column_comment']+'有误，长度应小于'+str(length)+'个字";\n'
               item += '\t\t}\n\n'
               validate_list += item
           elif property['property_type'] == 'String':
               pass



    source = source.replace('#VALIDATE_LIST#', validate_list)


    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    # 写入文件
    with open(folder_path + '/' + java_name + 'Controller.java', 'w') as f:  # 设置文件对象
        f.write(source)

# 生成controller
def java_controller_ant(project_path, package_name, java_name, table_name_cn, domain_name, ro_name, so_name, mapper_name,service_name, property_list):
    f = open('template/controller_ant.java', 'r')
    source = f.read()
    # 包名
    source = source.replace('#PACKAFE_NAME#', package_name)
    # 类名
    source = source.replace('#DOMAIN_NAME#', java_name)
    # 注释
    source = source.replace('#TABLE_NAME_CN#', table_name_cn)

    # 包名
    source = source.replace('#PACKAGE_BEAN#', domain_name)
    source = source.replace('#PACKAGE_RO#', ro_name)
    source = source.replace('#PACKAGE_SO#', so_name)
    source = source.replace('#PACKAGE_MAPPER#', mapper_name)
    source = source.replace('#PACKAGE_SERVICE#', service_name)

    lower_index = 0
    domain_name_lower = ''
    for c in java_name:
        if lower_index == 0:
            domain_name_lower += c.lower()
        else:
            domain_name_lower += c
        lower_index += 1
    source = source.replace('#DOMAIN_NAME_LOWER#', domain_name_lower)

    # 生成验证
    validate_list = ''
    unique_code_upper = ''
    for index,property in enumerate(property_list):
        get = handel_property_get(property['property_name'])
        if index == 0:
            pass
        elif index == 1:
            item = '\t\tif(flag && !isAdd && (null == ro.'+get+' || !WaterValidateUtil.validateMd5Pwd(ro.'+get+'))){\n'
            item += '\t\t\tflag = false;\n'
            item += '\t\t\tmsg = "'+property['column_comment']+'有误";\n'
            item += '\t\t}\n\n'
            validate_list += item
            unique_code_upper = handel_property_upper(property['property_name'])
        else:
           if property['property_type'] == 'String' and None != property['property_len'] and property['property_len'] > 0 :
               length = int(property['property_len']/2)
               item = '\t\tif(flag && (null != ro.'+get+' && ro.'+get+'.length() > '+str(length)+')){\n'
               item += '\t\t\tflag = false;\n'
               item += '\t\t\tmsg = "'+property['column_comment']+'有误，长度应小于'+str(length)+'个字";\n'
               item += '\t\t}\n\n'
               validate_list += item
           elif property['property_type'] == 'String':
               pass



    source = source.replace('#VALIDATE_LIST#', validate_list)
    source = source.replace('#UNIQUE_CODE_UPPER#', unique_code_upper)


    package_path = package_name.replace('.', '/')
    folder_path = project_path + '/' + package_path

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    # 写入文件
    with open(folder_path + '/' + java_name + 'Controller.java', 'w') as f:  # 设置文件对象
        f.write(source)

def gen_execute(sql_path, common_path, common_pkg, pname, mapper_path,web_path, web_pkg):
    # 调用方法
    table_name, table_name_cn, property_list = read_sql(sql_path)
    java_name = handel_java_name(table_name)


    #生成domain
    project_path = common_path
    domain_name = common_pkg + '.bean.domain'+pname
    java_domain(project_path,domain_name,java_name,table_name,table_name_cn,property_list)
    #生成ro
    project_path = common_path
    ro_name = common_pkg + '.bean.ro'+pname
    java_ro(project_path,ro_name,java_name,table_name,table_name_cn,property_list)
    #生成so
    '''
    project_path = common_path
    so_name = common_pkg + '.bean.so'+pname
    java_so(project_path,so_name,java_name,table_name,table_name_cn,property_list)
    '''
    project_path = common_path
    so_name = common_pkg + '.bean.so'+pname
    java_so_ant(project_path,so_name,java_name,table_name,table_name_cn,property_list)
    # 生成mapper
    project_path = common_path
    mapper_name = common_pkg+ '.mapper'+pname
    java_mapper(project_path, mapper_name, java_name, table_name_cn, domain_name,so_name)
    # 生成mybatis
    project_path = mapper_path + '/resources/mybatis/mapper'
    java_mybatis(project_path, java_name, table_name, domain_name,so_name,mapper_name,property_list)
    # 生成service
    project_path = common_path
    service_name = common_pkg + '.service'+pname
    java_service(project_path, service_name, java_name, table_name_cn, domain_name, ro_name,so_name,mapper_name,property_list)
    # 生成inter
    project_path = common_path
    inter_name = common_pkg + '.service'+pname
    java_inter(project_path, inter_name, java_name, table_name_cn, domain_name, ro_name, so_name, mapper_name)
    # 生成controller
    '''
    project_path = web_path
    controller_name = web_pkg+pname
    java_controller(project_path, controller_name, java_name, table_name_cn, domain_name, ro_name, so_name, mapper_name,service_name, property_list)
    '''
    project_path = web_path
    controller_name = web_pkg + pname
    java_controller_ant(project_path, controller_name, java_name, table_name_cn, domain_name, ro_name, so_name, mapper_name,
                    service_name, property_list)

if __name__ == '__main__':
    # SQL文件路径
    sql_path = 'sql/plan_out_schedule_edition.sql'
    # 项目路径
    project_path = '/Users/duhao/work/intellij_workspace/ant/'
    # project_path = './gen/'


    # 通用路径
    common_path = project_path + 'ant-common/src/main/java'
    # 通用包名
    common_pkg = 'com.zjtachao.fish.ant.common'
    # 附加包名
    pname = '.product'
    # mybatis文件路径
    mapper_path = project_path + 'ant-common/src/main'
    # controller 路径
    web_path = project_path + 'ant-manage/src/main/java'
    # controller 包名
    web_pkg = 'com.zjtachao.fish.ant.manage.web'
    gen_execute(sql_path, common_path, common_pkg, pname, mapper_path, web_path, web_pkg)
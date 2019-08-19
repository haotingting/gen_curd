# Python根据SQL自动生成Java的CRUD的代码
### 1，先准备SQL文件，放置到sql目录下
### 2，确认template目录下各个模版
#### a) domain.java 数据库映射对象
#### b) ro.java 对外操作数据对象
#### c) so.java 查询条件对象
#### d) mybatis.xml mybatis的数据库操作配置文件
#### e) mapper.java mybatis映射的java操作模版
#### f) service_impl.java 服务类模版
#### g) service.java 服务接口模版
#### h) controller.java 对外REST接口模版
### 3，确认gen_java.py中的路径配置项
### 4，执行gen_java.py即可生成相应java文件
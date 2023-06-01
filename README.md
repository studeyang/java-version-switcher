# java-version-switcher
快速切换Java版本。

## 使用方法

### 1. 配置环境变量

克隆本工程至本地。

```shell
git clone https://github.com/studeyang/java-version-switcher.git
```

设置 `scripts` 目录至环境变量。

```
set Path=%JAVA_HOME%\bin;%MAVEN_HOME%\bin;%Path%
```

### 2. 配置Java安装路径

编辑`scripts/javaX.bat`文件，配置本地 Java 安装路径，如果您使用了 Maven，也可同时配置对应版本。

```
if %1 == "Java 8" (
  set JAVA_HOME=D:\dev\Java\jdk1.8.0_211
  set MAVEN_HOME=D:\dev\apache-maven-3.5.0
)
if %1 == "Java 17" (
  set JAVA_HOME=D:\dev\Java\jdk-17.0.2
  set MAVEN_HOME=D:\dev\apache-maven-3.8.3
)
```

### 3. 执行切换

以管理员方式打开 cmd。

```
java17 perm
```

如果不加 perm 则表示只在当前 cmd 窗口有效。


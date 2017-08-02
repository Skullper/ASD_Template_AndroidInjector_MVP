<#if !(perModuleRepositories??) || perModuleRepositories>
buildscript {
    repositories {
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:${gradlePluginVersion}'
    }
}
allprojects {
    repositories {
        jcenter()
    }
}
</#if>

android {

    defaultConfig {
        applicationId "${packageName}"
    }

    configurations.all {
        resolutionStrategy.force 'com.google.code.findbugs:jsr305:1.3.9'
    }
}

dependencies {
    <#if dependencyList?? >
    <#list dependencyList as dependency>
    compile '${dependency}'
    </#list>
    </#if>
    annotationProcessor 'com.google.dagger:dagger-compiler:2.+'
    annotationProcessor 'com.google.dagger:dagger-android-processor:2.+'
}

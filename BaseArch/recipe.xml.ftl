<?xml version="1.0"?>
<recipe>

  <dependency mavenUrl="com.google.dagger:dagger:2.+"/>
  <#if isSupportLibUsing>
    <dependency mavenUrl="com.google.dagger:dagger-android-support:2.+"/>
  <#else>
    <dependency mavenUrl="com.google.dagger:dagger-android:2.+"/>
  </#if>
  <merge from="root/build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />

  <!--<merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />-->

	<!--<merge from="root/res/values/strings.xml.ftl" to="${escapeXmlAttribute(resOut)}/values/strings.xml"/>-->

  <instantiate from="root/src/app_package/ApplicationWrapper.java.ftl" to="${escapeXmlAttribute(srcOut)}/${classApplication}.java"/>

  <instantiate from="root/src/app_package/base_arch/activity/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base_arch/activity/${activityClass}.java" />

  <instantiate from="root/src/app_package/base_arch/fragment/BlankFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base_arch/fragment/${className}.java" />

  <instantiate from="root/src/app_package/base_arch/presentation/view/SimpleView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base_arch/presentation/view/${viewName}.java" />

  <instantiate from="root/src/app_package/base_arch/presentation/presenter/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base_arch/presentation/presenter/${presenterName}.java" />

  <instantiate from="root/src/app_package/di/components/AppComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/components/AppComponent.java"/>

  <instantiate from="root/src/app_package/di/modules/AppModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/modules/AppModule.java"/>

  <instantiate from="root/src/app_package/di/ModuleBuilder.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/ModuleBuilder.java"/>

  <instantiate from="root/src/app_package/utils/FragmentHelper.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/utils/FragmentHelper.java"/>
                   
  <open file="${escapeXmlAttribute(srcOut)}/base_arch/fragment/${className}.java" />
  <open file="${escapeXmlAttribute(srcOut)}/base_arch/activity/${activityClass}.java" />
  <open file="${escapeXmlAttribute(srcOut)}/base_arch/presentation/presenter/${presenterName}.java" />
  <open file="${escapeXmlAttribute(srcOut)}/base_arch/presentation/view/${viewName}.java" />
</recipe>

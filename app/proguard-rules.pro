# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/MLS/Development/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
#-keep class com.alipay.euler.andfix.AndFix { *; }
#保持相同的混淆映射（规则）否则AndFix不能成功
-applymapping ../mapping.txt
-keep class com.alipay.euler.andfix.annotation.MethodReplace { *; }
-keep class * extends java.lang.annotation.Annotation
-keepclasseswithmembernames class * {
    native <methods>;
}
#-keep class com.raymond.demo.andfixdemo.test.A {*;}
#-keep class com.raymond.demo.andfixdemo.test.Fix {*;}
-keep class com.alipay.euler.andfix.** { *; }
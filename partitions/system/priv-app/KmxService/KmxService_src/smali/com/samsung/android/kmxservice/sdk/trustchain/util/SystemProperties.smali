.class public Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUILD_TYPE_ENG:I = 0x2

.field public static final BUILD_TYPE_USER:I = 0x0

.field public static final BUILD_TYPE_USERDEBUG:I = 0x1

.field private static final GET_PROP_EXECUTABLE_PATH:Ljava/lang/String; = "/system/bin/getprop"

.field public static final ONE_UI_5_1_1:I = 0xc3b5

.field public static final ONE_UI_7_1:I = 0x111d4

.field private static final PROP_BUILD_SYSTEM_NAME:Ljava/lang/String; = "ro.product.system.name"

.field private static final PROP_BUILD_TYPE:Ljava/lang/String; = "ro.build.type"

.field private static final PROP_FIRST_API_LEVEL:Ljava/lang/String; = "ro.product.first_api_level"

.field private static final PROP_ONEUI_VERSION:Ljava/lang/String; = "ro.build.version.oneui"

.field private static final TAG:Ljava/lang/String; = "KmxChainSdk|SystemProperties"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemPropertiesInternal;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SysProp e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KmxChainSdk|SystemProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getBuildType()I
    .locals 6

    const-string v0, "ro.build.type"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    move v2, v5

    goto :goto_2

    :pswitch_0
    move v2, v3

    goto :goto_2

    :pswitch_1
    move v2, v4

    :goto_2
    :pswitch_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x188de -> :sswitch_2
        0x36ebcb -> :sswitch_1
        0x147c5168 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFirstApiLevel()I
    .locals 3

    const-string v0, "ro.product.first_api_level"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemProperties;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "firstApiLevel :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KmxChainSdk|SystemProperties"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string v1, "FirstApiLevel is empty"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemPropertiesInternal;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getOneUiVersion()I
    .locals 1

    const-string v0, "ro.build.version.oneui"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemProperties;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isModelVST()Z
    .locals 2

    const-string v0, "ro.product.system.name"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xrvst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isMoreThanOneUI511()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemProperties;->getOneUiVersion()I

    move-result v0

    const v1, 0xc3b5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMoreThanOneUI71()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemProperties;->getOneUiVersion()I

    move-result v0

    const v1, 0x111d4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPossibleUseFloatingFeature()Z
    .locals 5

    const-string v0, "KmxChainSdk|SystemProperties"

    :try_start_0
    const-string v1, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[isPossibleUseFloatingFeature] can not load FloatingFeature, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v2, "com.samsung.android.feature.SemFloatingFeature"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[isPossibleUseFloatingFeature] can not load semFloatingFeature, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

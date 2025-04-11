.class public Lcom/samsung/android/kmxservice/sdk/trustchain/ChainSupportUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CSC_COUNTRY_CODE_CHINA:Ljava/lang/String; = "China"

.field private static final CSC_COUNTRY_ISO_CODE_CHINA:Ljava/lang/String; = "CN"

.field private static final KMX_SERVICE_PKG_NAME:Ljava/lang/String; = "com.samsung.android.kmxservice"

.field private static final ONE_UI_7_0_0:I = 0x11170

.field private static final PROP_BUILD_TYPE:Ljava/lang/String; = "ro.build.type"

.field private static final PROP_DEVICE_CSC_COUNTRY_CODE:Ljava/lang/String; = "ro.csc.country_code"

.field private static final PROP_DEVICE_CSC_COUNTRY_ISO_CODE:Ljava/lang/String; = "ro.csc.countryiso_code"

.field private static final PROP_ONEUI_VERSION:Ljava/lang/String; = "ro.build.version.oneui"

.field private static final TAG:Ljava/lang/String; = "KmxChainSdk|ChainSupportUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBuildType()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOneUiVersion()I
    .locals 2

    const-string v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static isChinaDevice()Z
    .locals 5

    const-string v0, "ro.csc.countryiso_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "KmxChainSdk|ChainSupportUtil"

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is unsupported device (country_iso_code) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string v0, "ro.csc.country_code"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is unsupported device (country_code) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isKmxServiceInstalled(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.kmxservice"

    const/16 v1, 0x4000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "KmxChainSdk|ChainSupportUtil"

    const-string v0, "KMX Service package is not installed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isTrustChainAvailable(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainSupportUtil;->isKmxServiceInstalled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainSupportUtil;->getBuildType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "KmxChainSdk|ChainSupportUtil"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainSupportUtil;->getOneUiVersion()I

    move-result v0

    const v4, 0x11170

    if-ge v0, v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "This OneUI version can not work ChainService. current : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainSupportUtil;->getOneUiVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", required : more than 7.0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainSupportUtil;->isChinaDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Multi-User-Mode, but not system user"

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

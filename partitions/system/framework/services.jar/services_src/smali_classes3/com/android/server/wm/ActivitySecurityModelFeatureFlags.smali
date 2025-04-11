.class public abstract Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;
.super Ljava/lang/Object;
.source "ActivitySecurityModelFeatureFlags.java"


# static fields
.field public static sAsmRestrictionsEnabled:I

.field public static sAsmToastsEnabled:I

.field public static final sExcludedPackageNames:Ljava/util/HashSet;

.field public static sPm:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$C19FVKBY_gQiSxGQKKEeFVFLW4Q(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->lambda$initialize$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sExcludedPackageNames:Ljava/util/HashSet;

    return-void
.end method

.method public static flagEnabledForUid(II)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v2, :cond_0

    const-wide/32 v3, 0xdbe868a

    .line 88
    invoke-static {v3, v4, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_5

    .line 91
    sget-object p0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    move p1, v1

    .line 95
    :goto_2
    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 96
    sget-object v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sExcludedPackageNames:Ljava/util/HashSet;

    aget-object v3, p0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public static initialize(Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager;)V
    .locals 2

    .line 69
    invoke-static {}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->updateFromDeviceConfig()V

    .line 70
    new-instance v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v1, "window_manager"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 72
    sput-object p1, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static synthetic lambda$initialize$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 71
    invoke-static {}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->updateFromDeviceConfig()V

    return-void
.end method

.method public static shouldRestrictActivitySwitch(I)Z
    .locals 1

    .line 82
    sget v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->flagEnabledForUid(II)Z

    move-result p0

    return p0
.end method

.method public static shouldShowToast(I)Z
    .locals 1

    .line 77
    sget v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmToastsEnabled:I

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->flagEnabledForUid(II)Z

    move-result p0

    return p0
.end method

.method public static updateFromDeviceConfig()V
    .locals 5

    const-string/jumbo v0, "window_manager"

    const-string v1, "ActivitySecurity__asm_toasts_enabled"

    const/4 v2, 0x0

    .line 107
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmToastsEnabled:I

    const-string v1, "ActivitySecurity__asm_restrictions_enabled"

    .line 109
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    const-string v1, "ActivitySecurity__asm_exempted_packages"

    const-string v3, ""

    .line 112
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sExcludedPackageNames:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const-string v1, ","

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 116
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    sget-object v4, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sExcludedPackageNames:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

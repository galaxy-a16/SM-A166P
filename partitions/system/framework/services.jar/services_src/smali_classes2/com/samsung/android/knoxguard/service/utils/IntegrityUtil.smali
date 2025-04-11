.class public abstract Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;
.super Ljava/lang/Object;
.source "IntegrityUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static checkComponents(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;)Z
    .locals 4

    const-string v0, "com.samsung.android.kgclient"

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 176
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string p1, "PackageManager is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v2, 0xe

    .line 180
    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 181
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string v3, "com.samsung.android.kgclient.receiver.KGAdminReceiver"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAdminReceiver:Z

    .line 182
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string v3, "com.samsung.android.kgclient.receiver.systemIntent.SystemIntentReceiver"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiver:Z

    .line 183
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v3, "com.samsung.android.kgclient.receiver.systemIntent.SystemIntentReceiverService"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiverService:Z

    .line 184
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v3, "com.samsung.android.kgclient.service.KGIntentService"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKgIntentService:Z

    .line 185
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v3, "com.samsung.android.kgclient.alarm.AlarmService"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAlarmService:Z

    .line 186
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const-string v2, "com.samsung.android.kgclient.provider.KGProvider"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKGProvider:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkComponents error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAdminReceiver:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiver:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiverService:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKgIntentService:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAlarmService:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKGProvider:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static checkKGClientIntegrity(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;
    .locals 7

    .line 49
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkKGClientIntegrity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rlcState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;-><init>()V

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const-string v3, "Completed"

    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result p1

    .line 62
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->isSystemApp(Landroid/content/Context;)Z

    move-result v3

    .line 63
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSignatures : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnabled : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-boolean p1, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validSignature:Z

    .line 70
    iput-boolean v4, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabled:Z

    .line 71
    iput-boolean v2, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validVersion:Z

    .line 73
    invoke-static {p0, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkComponents(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;)Z

    move-result p0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComponentEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/2addr p1, v4

    and-int/2addr p0, p1

    .line 77
    iput-boolean p0, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->isOk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 80
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    const-string p0, "checkKGClientIntegrity() RLC_STATE_COMPLETED || RLC_STATE_NULL. Do nothing."

    .line 56
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-boolean v2, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->isOk:Z

    return-object v1
.end method

.method public static checkSignatures(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "com.samsung.android.kgclient"

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x40

    .line 90
    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 91
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkgInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android"

    .line 93
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "KG Client signature doesn\'t match with platform."

    .line 94
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string p0, "KG Client signature match with platform."

    .line 97
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 101
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkKGClientIntegrity Exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static checkSystemUiIntegrity(Landroid/content/Context;)V
    .locals 2

    .line 131
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkSystemUiIntegrity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->testSystemUiCorrupted(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v1, "power"

    .line 134
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KnoxGuard : system recovery (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 205
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 206
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.samsung.android.kgclient"

    .line 122
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 123
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 125
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabled NameNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .locals 4

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.samsung.android.kgclient"

    .line 109
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 110
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    return v1

    :catch_0
    move-exception p0

    .line 114
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemApp NameNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static setInitialState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "com.samsung.android.kgclient"

    .line 234
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setInitialState"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "device_policy"

    .line 237
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-nez v2, :cond_0

    const-string p0, "DPM is not available"

    .line 240
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 246
    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 253
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string p0, "KGClient is malicious, it will be locked"

    .line 255
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_4

    const-string v1, ""

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Completed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 260
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 261
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 262
    invoke-interface {v1, v0, p1}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 263
    invoke-interface {v1, v0, v4, p1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.kgclient.receiver.KGAdminReceiver"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 273
    :try_start_2
    invoke-virtual {v2, p1, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 275
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.samsung.android.kgclientsetActiveAdmin"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    :try_start_3
    const-string p1, "appops"

    .line 284
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 285
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 286
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3f

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v3, "com.samsung.android.kgclient does not have OP_RUN_IN_BACKGROUND:  (fixing)"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, p1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 305
    :catch_2
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string p1, "com.samsung.android.kgclientNot found??"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void

    :catch_3
    move-exception p0

    .line 248
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client Notfound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static testSystemUiCorrupted(Landroid/content/Context;)I
    .locals 9

    const-string p0, "com.android.systemui"

    .line 142
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 144
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v0, "PackageManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    const-wide/16 v0, 0x0

    .line 149
    :try_start_0
    invoke-interface {v6, p0, v0, v1, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 150
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    if-eqz v0, :cond_1

    :try_start_1
    const-string v1, "com.android.systemui"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    .line 153
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v8, v7

    goto :goto_1

    :catch_1
    move-exception v0

    move v8, v7

    .line 156
    :goto_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testSystemUiCorrupted : Exception in checking enabled value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    :try_start_2
    invoke-interface {v6, p0, v7}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v8, v8, 0x2

    .line 163
    invoke-interface {v6, p0, v7, v7}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 166
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "testSystemUiCorrupted : Exception in checking hidden value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_2
    :goto_2
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "testSystemUiCorrupted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public static toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 219
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validSignature:Z

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/lit16 v1, v1, 0x1000

    .line 220
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabled:Z

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    or-int/2addr v1, v2

    .line 221
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validVersion:Z

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    or-int/2addr v1, v2

    .line 223
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAdminReceiver:Z

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    const/16 v2, 0x40

    :goto_3
    or-int/2addr v1, v2

    .line 224
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiver:Z

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    .line 225
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiverService:Z

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    const/16 v2, 0x100

    :goto_5
    or-int/2addr v1, v2

    .line 226
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKgIntentService:Z

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_6

    :cond_7
    const/16 v2, 0x200

    :goto_6
    or-int/2addr v1, v2

    .line 227
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAlarmService:Z

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_7

    :cond_8
    const/16 v2, 0x400

    :goto_7
    or-int/2addr v1, v2

    .line 228
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKGProvider:Z

    if-eqz p0, :cond_9

    goto :goto_8

    :cond_9
    const/16 v0, 0x800

    :goto_8
    or-int p0, v1, v0

    return p0
.end method

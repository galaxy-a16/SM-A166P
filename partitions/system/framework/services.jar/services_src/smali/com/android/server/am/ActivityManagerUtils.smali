.class public abstract Lcom/android/server/am/ActivityManagerUtils;
.super Ljava/lang/Object;
.source "ActivityManagerUtils.java"


# static fields
.field public static sAndroidIdHash:Ljava/lang/Integer;

.field public static final sHashCache:Landroid/util/ArrayMap;

.field public static sInjectedAndroidId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$42dU56Bq_ZW6ViAnaLcddTSJYwk(I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->lambda$logUnsafeIntentEvent$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public static extractByte([BI)I
    .locals 0

    .line 112
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    mul-int/lit8 p1, p1, 0x8

    shl-int/2addr p0, p1

    return p0
.end method

.method public static getAndroidIdHash()I
    .locals 3

    .line 58
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    const-string v2, "android_id"

    .line 61
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 65
    :cond_0
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    .line 68
    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getUnsignedHashCached(Ljava/lang/String;)I
    .locals 3

    .line 78
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v1

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getUnsignedHashUnCached(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "SHA-1"

    .line 94
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 96
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->unsignedIntFromBytes([B)I

    move-result p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static hashComponentNameForAtom(Ljava/lang/String;)I
    .locals 1

    .line 136
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    move-result v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static injectAndroidIdForTest(Ljava/lang/String;)V
    .locals 0

    .line 48
    sput-object p0, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    const/4 p0, 0x0

    .line 49
    sput-object p0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic lambda$logUnsafeIntentEvent$0(I)[Ljava/lang/String;
    .locals 0

    .line 145
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static logUnsafeIntentEvent(IILandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 11

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityManagerUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    move-object v7, v0

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    const/16 v1, 0x23d

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    move v2, p0

    move v3, p1

    move-object v8, p3

    move v10, p4

    .line 148
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static shouldSamplePackageForAtom(Ljava/lang/String;F)Z
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    return v2

    .line 126
    :cond_1
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashCached(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    move-result v0

    xor-int/2addr p0, v0

    int-to-double v3, p0

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v3, v5

    float-to-double p0, p1

    cmpg-double p0, v3, p0

    if-gtz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static unsignedIntFromBytes([B)I
    .locals 2

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v0

    const/4 v1, 0x1

    .line 105
    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 106
    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 107
    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result p0

    or-int/2addr p0, v0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

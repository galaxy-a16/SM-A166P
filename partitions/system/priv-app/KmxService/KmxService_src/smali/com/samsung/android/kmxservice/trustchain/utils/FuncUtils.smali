.class public Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTVATED_PROPERTY_BLACKBOARD:Ljava/lang/String; = "activated_status_blackboard"

.field private static final ACTVATED_PROPERTY_MEMBERSHIP:Ljava/lang/String; = "activated_status_membership"

.field private static final MAX_INTERVAL_TIME:J = 0xea60L

.field private static final MAX_JITTER_VALUE:I = 0xc8

.field private static final MIN_JITTER_VALUE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TrustChain::FuncUtils"

.field private static final random:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs areNotEmpty([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static checkBatteryStatus(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "TrustChain::FuncUtils"

    const-string v1, "battery status : "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "plugged"

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    const/4 v1, 0x5

    if-ne v3, v1, :cond_1

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    :catch_0
    move-exception p0

    const-string v1, "checkBatteryStatus"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2
.end method

.method public static checkWifiStatus(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "TrustChain::FuncUtils"

    const-string v1, "network status : "

    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "checkWifiStatus"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isActivated(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isBlackboardActivated(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBlackboardActivated(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activated_status_blackboard"

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMembershipActivated(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activated_status_membership"

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTrustedSecurityStatus(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static retryBooleanAction(Ljava/util/concurrent/Callable;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sget-object v5, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->random:Ljava/security/SecureRandom;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->sleepInMilliSecond(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return v2
.end method

.method public static retryCodeAction(Ljava/util/concurrent/Callable;I)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            ">;I)",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->sleepInSecond(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static sendInternalBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/EventReceiver;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/EventReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lp0/c;->b(Landroid/content/Context;)Lp0/c;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lp0/c;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2}, Lp0/c;->d(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lp0/c;->a()V

    :cond_0
    invoke-virtual {p0, v0}, Lp0/c;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static setBlackboardActivated(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "activated_status_blackboard"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setMembershipActivated(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "activated_status_membership"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setSolbLogger()V
    .locals 2

    sget-object v0, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->DEBUG:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    sput-object v0, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils$1;

    const-string v1, "TrustChain::SolbCore"

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lla/a;->a:Lla/b;

    return-void
.end method

.method public static sleepInMilliSecond(J)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static sleepInSecond(I)V
    .locals 4

    const-wide/16 v0, 0x3e8

    int-to-long v2, p0

    mul-long/2addr v2, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

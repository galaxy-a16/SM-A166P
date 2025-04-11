.class public Lcom/samsung/android/kmxservice/trustchain/securityscanner/EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final LAZY_BOOT_COMPLETE:Ljava/lang/String; = "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

.field private static final MAX_LIMIT_INITIAL_TIME:I = 0x5a0

.field private static final TAG:Ljava/lang/String; = "TrustChain::EventReceiver"

.field private static final random:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/EventReceiver;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private requestDailySecurityScan(Landroidx/work/d;Landroid/content/Context;J)V
    .locals 2

    new-instance p0, Landroidx/work/v;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Landroidx/work/v;-><init>(Ljava/util/concurrent/TimeUnit;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "timeUnit"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/y;->b:Lp1/q;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    iput-wide p3, v1, Lp1/q;->g:J

    const-wide p3, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p3, v0

    iget-object v0, p0, Landroidx/work/y;->b:Lp1/q;

    iget-wide v0, v0, Lp1/q;->g:J

    cmp-long p3, p3, v0

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const-string p3, "constraints"

    invoke-static {p1, p3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Landroidx/work/y;->b:Lp1/q;

    iput-object p1, p3, Lp1/q;->j:Landroidx/work/d;

    invoke-virtual {p0}, Landroidx/work/y;->a()Landroidx/work/z;

    move-result-object p0

    check-cast p0, Landroidx/work/w;

    invoke-static {p2}, Landroidx/work/impl/d0;->A(Landroid/content/Context;)Landroidx/work/impl/d0;

    move-result-object p1

    sget-object p2, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {p1, p2, p0}, Landroidx/work/impl/d0;->z(Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/w;)Landroidx/work/u;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given initial delay is too large and will cause an overflow!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string v0, "TrustChain::EventReceiver"

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "security scan event received, action : "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    const-wide/16 v10, -0x1

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v3, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    const-string v2, "networkType"

    invoke-static {v3, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/r;->a1(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v1, Landroidx/work/d;

    move-object v2, v1

    move-wide v8, v10

    invoke-direct/range {v2 .. v12}, Landroidx/work/d;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    const-string v2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "security scan requestDailySecurityScan : "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/kmxservice/trustchain/securityscanner/EventReceiver;->random:Ljava/security/SecureRandom;

    const/16 v0, 0x5a0

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long v2, p2

    goto :goto_0

    :cond_1
    const-string v2, "com.samsung.android.kmxservice.trustchain.KMX_CHAIN_ACTIVATE_COMPLETED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "security scan requestDailySecurityScan to start in just 1 mins delay: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "com.samsung.android.kmxservice.trustchain.CHANGE_OEM_UNLOCK_ALLOWED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "security scan requestDailySecurityScan to start in just 5 mins delay: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x5

    :goto_0
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/EventReceiver;->requestDailySecurityScan(Landroidx/work/d;Landroid/content/Context;J)V

    goto :goto_1

    :cond_3
    const-string p0, "com.samsung.android.kmxservice.trustchain.KMX_CHAIN_DEACTIVATE_COMPLETED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "security scan to be deactivated in this case: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroidx/work/impl/d0;->A(Landroid/content/Context;)Landroidx/work/impl/d0;

    move-result-object p0

    new-instance p1, Lq1/c;

    const/4 p2, 0x1

    const-string v0, "kmx-service|security-scanner"

    invoke-direct {p1, p0, v0, p2}, Lq1/c;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;Z)V

    iget-object p0, p0, Landroidx/work/impl/d0;->s:Lr1/a;

    invoke-interface {p0, p1}, Lr1/a;->b(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p0, "Invalid parameter intent or action is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

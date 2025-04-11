.class public Lcom/att/iqi/libs/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "IQIConcierge"

.field private static sDebug:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canLog()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    return v0
.end method

.method public static enableLogging(Z)V
    .locals 0

    .line 46
    sput-boolean p0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    return-void
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1

    .line 22
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

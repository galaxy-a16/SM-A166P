.class public abstract Lcom/android/server/enterprise/plm/context/ProcessContext;
.super Ljava/lang/Object;
.source "ProcessContext.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProcessContext"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/enterprise/plm/context/ProcessContext;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public needToCleanUpOnConditionNotMet()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final needToKeepAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->needToSupportThisDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    invoke-interface {p1}, Lcom/android/server/enterprise/plm/IStateDelegate;->isUserUnlocked()Z

    move-result v0

    .line 51
    sget-object v2, Lcom/android/server/enterprise/plm/context/ProcessContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user unlocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->needToKeepProcessAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "keep alive "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public abstract needToKeepProcessAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z
.end method

.method public abstract needToSupportThisDevice()Z
.end method

.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# instance fields
.field public final mMocked:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 288
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;->mMocked:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;->mMocked:Z

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " provider added mock provider override"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " provider removed mock provider override"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

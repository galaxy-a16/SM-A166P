.class public Lcom/att/iqi/IIQIBroker$Default;
.super Ljava/lang/Object;
.source "IIQIBroker.java"

# interfaces
.implements Lcom/att/iqi/IIQIBroker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public disableService()V
    .locals 0

    .line 0
    return-void
.end method

.method public forceStopService()V
    .locals 0

    .line 0
    return-void
.end method

.method public getTimestamp()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setUnlockCode(J)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .locals 0

    .line 0
    return-void
.end method

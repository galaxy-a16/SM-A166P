.class public interface abstract Lcom/att/iqi/IIQIService;
.super Ljava/lang/Object;
.source "IIQIService.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.att.iqi.IIQIService"


# virtual methods
.method public abstract disableService()V
.end method

.method public abstract forceStopService()V
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
.end method

.method public abstract registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
.end method

.method public abstract registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
.end method

.method public abstract reportKeyCode([B)Z
.end method

.method public abstract setUnlockCode(J)Z
.end method

.method public abstract shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
.end method

.method public abstract submitMetric(Lcom/att/iqi/lib/Metric;)V
.end method

.method public abstract unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
.end method

.method public abstract unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
.end method

.method public abstract unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
.end method

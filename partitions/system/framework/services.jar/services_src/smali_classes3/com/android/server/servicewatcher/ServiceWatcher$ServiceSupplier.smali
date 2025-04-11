.class public interface abstract Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# virtual methods
.method public abstract getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.end method

.method public abstract hasMatchingService()Z
.end method

.method public abstract register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V
.end method

.method public abstract unregister()V
.end method

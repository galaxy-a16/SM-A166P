.class public interface abstract Lcom/android/server/enterprise/EnterpriseServiceCallback;
.super Ljava/lang/Object;
.source "EnterpriseServiceCallback.java"


# virtual methods
.method public hasDeferredBroadcastReceiverToRegister()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract onAdminAdded(I)V
.end method

.method public onAdminRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminRemoved(IZ)V
    .locals 0

    .line 77
    invoke-interface {p0, p1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V

    return-void
.end method

.method public abstract onPreAdminRemoval(I)V
.end method

.method public registerDeferredBoradcastReceiver()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract systemReady()V
.end method

.class public Lcom/android/server/enterprise/restriction/SPDControlPolicy;
.super Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;
.source "SPDControlPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# virtual methods
.method public getAutoSecurityPolicyUpdateMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public setAutoSecurityPolicyUpdateMode(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

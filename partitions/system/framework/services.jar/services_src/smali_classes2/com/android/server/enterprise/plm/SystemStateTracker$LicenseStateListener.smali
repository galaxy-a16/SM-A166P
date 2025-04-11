.class public Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;
.super Ljava/lang/Object;
.source "SystemStateTracker.java"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    return-void
.end method


# virtual methods
.method public onUpdateContainerLicenseStatus(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 2

    .line 584
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 586
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 584
    invoke-static {p0, v1, p1, p2, v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.class public interface abstract Landroid/net/INetworkMonitorCallbacks;
.super Ljava/lang/Object;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "4d26968d0f6cb11c9bb669a3f8ebc7a1c39f9391"

.field public static final VERSION:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$net$INetworkMonitorCallbacks"

    .line 389
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract hideProvisioningNotification()V
.end method

.method public abstract notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V
.end method

.method public abstract notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V
.end method

.method public abstract notifyNetworkTested(ILjava/lang/String;)V
.end method

.method public abstract notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V
.end method

.method public abstract notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
.end method

.method public abstract notifyProbeStatusChanged(II)V
.end method

.method public abstract onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
.end method

.method public abstract showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

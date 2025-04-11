.class public interface abstract Landroid/net/INetworkMonitor;
.super Ljava/lang/Object;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "4d26968d0f6cb11c9bb669a3f8ebc7a1c39f9391"

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_PARTIAL_CONNECTIVITY:I = 0x2

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field public static final NETWORK_VALIDATION_PROBE_DNS:I = 0x4

.field public static final NETWORK_VALIDATION_PROBE_FALLBACK:I = 0x20

.field public static final NETWORK_VALIDATION_PROBE_HTTP:I = 0x8

.field public static final NETWORK_VALIDATION_PROBE_HTTPS:I = 0x10

.field public static final NETWORK_VALIDATION_PROBE_PRIVDNS:I = 0x40

.field public static final NETWORK_VALIDATION_RESULT_PARTIAL:I = 0x2

.field public static final NETWORK_VALIDATION_RESULT_SKIPPED:I = 0x4

.field public static final NETWORK_VALIDATION_RESULT_VALID:I = 0x1

.field public static final VERSION:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$net$INetworkMonitor"

    .line 452
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract forceReevaluation(I)V
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract launchCaptivePortalApp()V
.end method

.method public abstract notifyCaptivePortalAppFinished(I)V
.end method

.method public abstract notifyDnsResponse(I)V
.end method

.method public abstract notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
.end method

.method public abstract notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract notifyNetworkConnectedParcel(Landroid/net/networkstack/aidl/NetworkMonitorParameters;)V
.end method

.method public abstract notifyNetworkDisconnected()V
.end method

.method public abstract notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
.end method

.method public abstract setAcceptPartialConnectivity()V
.end method

.method public abstract start()V
.end method

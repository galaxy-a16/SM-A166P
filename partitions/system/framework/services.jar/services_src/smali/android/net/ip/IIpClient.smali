.class public interface abstract Landroid/net/ip/IIpClient;
.super Ljava/lang/Object;
.source "IIpClient.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "4d26968d0f6cb11c9bb669a3f8ebc7a1c39f9391"

.field public static final PROV_IPV4_DHCP:I = 0x2

.field public static final PROV_IPV4_DISABLED:I = 0x0

.field public static final PROV_IPV4_STATIC:I = 0x1

.field public static final PROV_IPV6_DISABLED:I = 0x0

.field public static final PROV_IPV6_LINKLOCAL:I = 0x2

.field public static final PROV_IPV6_SLAAC:I = 0x1

.field public static final VERSION:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$net$ip$IIpClient"

    .line 562
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
.end method

.method public abstract addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
.end method

.method public abstract completedPreDhcpAction()V
.end method

.method public abstract confirmConfiguration()V
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract notifyPreconnectionComplete(Z)V
.end method

.method public abstract readPacketFilterComplete([B)V
.end method

.method public abstract removeKeepalivePacketFilter(I)V
.end method

.method public abstract setHttpProxy(Landroid/net/ProxyInfo;)V
.end method

.method public abstract setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMulticastFilter(Z)V
.end method

.method public abstract setTcpBufferSizes(Ljava/lang/String;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
.end method

.method public abstract stop()V
.end method

.method public abstract updateApfCapabilities(Landroid/net/apf/ApfCapabilities;)V
.end method

.method public abstract updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V
.end method

.class public interface abstract Landroid/net/INetworkStackConnector;
.super Ljava/lang/Object;
.source "INetworkStackConnector.java"

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

    const-string v2, "android$net$INetworkStackConnector"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetworkStackConnector;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract allowTestUid(ILandroid/net/INetworkStackStatusCallback;)V
.end method

.method public abstract fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
.end method

.method public abstract makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
.end method

.method public abstract makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
.end method

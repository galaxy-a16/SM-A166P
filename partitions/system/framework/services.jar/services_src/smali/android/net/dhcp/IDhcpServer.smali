.class public interface abstract Landroid/net/dhcp/IDhcpServer;
.super Ljava/lang/Object;
.source "IDhcpServer.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "4d26968d0f6cb11c9bb669a3f8ebc7a1c39f9391"

.field public static final STATUS_INVALID_ARGUMENT:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final STATUS_UNKNOWN_ERROR:I = 0x3

.field public static final VERSION:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$net$dhcp$IDhcpServer"

    .line 259
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/dhcp/IDhcpServer;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract start(Landroid/net/INetworkStackStatusCallback;)V
.end method

.method public abstract startWithCallbacks(Landroid/net/INetworkStackStatusCallback;Landroid/net/dhcp/IDhcpEventCallbacks;)V
.end method

.method public abstract stop(Landroid/net/INetworkStackStatusCallback;)V
.end method

.method public abstract updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V
.end method

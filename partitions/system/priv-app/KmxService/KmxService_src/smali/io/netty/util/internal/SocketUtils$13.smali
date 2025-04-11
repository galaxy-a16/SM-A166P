.class final Lio/netty/util/internal/SocketUtils$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/SocketUtils;->hardwareAddressFromNetworkInterface(Ljava/net/NetworkInterface;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic val$intf:Ljava/net/NetworkInterface;


# direct methods
.method public constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/SocketUtils$13;->val$intf:Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/util/internal/SocketUtils$13;->run()[B

    move-result-object p0

    return-object p0
.end method

.method public run()[B
    .locals 0

    .line 2
    iget-object p0, p0, Lio/netty/util/internal/SocketUtils$13;->val$intf:Ljava/net/NetworkInterface;

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p0

    return-object p0
.end method

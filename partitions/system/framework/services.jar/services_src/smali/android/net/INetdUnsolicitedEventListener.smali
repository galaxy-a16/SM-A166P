.class public interface abstract Landroid/net/INetdUnsolicitedEventListener;
.super Ljava/lang/Object;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "38614f80a23b92603d4851177e57c460aec1b606"

.field public static final VERSION:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$net$INetdUnsolicitedEventListener"

    .line 489
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract onInterfaceAdded(Ljava/lang/String;)V
.end method

.method public abstract onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract onInterfaceChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onInterfaceClassActivityChanged(ZIJI)V
.end method

.method public abstract onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
.end method

.method public abstract onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onInterfaceRemoved(Ljava/lang/String;)V
.end method

.method public abstract onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStrictCleartextDetected(ILjava/lang/String;)V
.end method

.class public Landroid/net/IDnsResolver$Default;
.super Ljava/lang/Object;
.source "IDnsResolver.java"

# interfaces
.implements Landroid/net/IDnsResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createNetworkCache(I)V
    .locals 0

    return-void
.end method

.method public destroyNetworkCache(I)V
    .locals 0

    return-void
.end method

.method public flushNetworkCache(I)V
    .locals 0

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPrefix64(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    .locals 0

    return-void
.end method

.method public isAlive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerEventListener(Landroid/net/metrics/INetdEventListener;)V
    .locals 0

    return-void
.end method

.method public registerUnsolicitedEventListener(Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;)V
    .locals 0

    return-void
.end method

.method public setLogSeverity(I)V
    .locals 0

    return-void
.end method

.method public setPrefix64(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    .locals 0

    return-void
.end method

.method public setResolverOptions(ILandroid/net/ResolverOptionsParcel;)V
    .locals 0

    return-void
.end method

.method public startPrefix64Discovery(I)V
    .locals 0

    return-void
.end method

.method public stopPrefix64Discovery(I)V
    .locals 0

    return-void
.end method

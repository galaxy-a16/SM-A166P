.class public abstract Lcom/android/internal/net/INetdTetherEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdTetherEventListener.java"

# interfaces
.implements Lcom/android/internal/net/INetdTetherEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetdTetherEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    instance-of v1, v0, Lcom/android/internal/net/INetdTetherEventListener;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/android/internal/net/INetdTetherEventListener;

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 50
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 71
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/net/INetdTetherEventListener;->onTetherStop()V

    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/net/INetdTetherEventListener;->onTetherStart()V

    :goto_0
    return v1

    .line 58
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

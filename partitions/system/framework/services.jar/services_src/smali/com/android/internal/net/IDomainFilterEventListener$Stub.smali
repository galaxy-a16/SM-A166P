.class public abstract Lcom/android/internal/net/IDomainFilterEventListener$Stub;
.super Landroid/os/Binder;
.source "IDomainFilterEventListener.java"

# interfaces
.implements Lcom/android/internal/net/IDomainFilterEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    sget-object v0, Lcom/android/internal/net/IDomainFilterEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IDomainFilterEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    sget-object v0, Lcom/android/internal/net/IDomainFilterEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    instance-of v1, v0, Lcom/android/internal/net/IDomainFilterEventListener;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/android/internal/net/IDomainFilterEventListener;

    return-object v0

    .line 39
    :cond_1
    new-instance v0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .line 47
    sget-object v0, Lcom/android/internal/net/IDomainFilterEventListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 72
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IDomainFilterEventListener;->onDomainFilterReportEvent(IIJLjava/lang/String;)V

    return v1

    .line 55
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

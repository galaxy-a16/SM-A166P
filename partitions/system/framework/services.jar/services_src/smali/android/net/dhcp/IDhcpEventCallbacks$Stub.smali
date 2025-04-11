.class public abstract Landroid/net/dhcp/IDhcpEventCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDhcpEventCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpEventCallbacks;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onLeasesChanged:I = 0x1

.field static final TRANSACTION_onNewPrefixRequest:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpEventCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_0
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    instance-of v1, v0, Landroid/net/dhcp/IDhcpEventCallbacks;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Landroid/net/dhcp/IDhcpEventCallbacks;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 66
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 74
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 79
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-interface {p0}, Landroid/net/dhcp/IDhcpEventCallbacks;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 85
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-interface {p0}, Landroid/net/dhcp/IDhcpEventCallbacks;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_0
    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 102
    :cond_1
    sget-object p1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/IpPrefix;

    .line 103
    invoke-interface {p0, p1}, Landroid/net/dhcp/IDhcpEventCallbacks;->onNewPrefixRequest(Landroid/net/IpPrefix;)V

    goto :goto_1

    .line 95
    :cond_2
    sget-object p1, Landroid/net/dhcp/DhcpLeaseParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 96
    invoke-interface {p0, p1}, Landroid/net/dhcp/IDhcpEventCallbacks;->onLeasesChanged(Ljava/util/List;)V

    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

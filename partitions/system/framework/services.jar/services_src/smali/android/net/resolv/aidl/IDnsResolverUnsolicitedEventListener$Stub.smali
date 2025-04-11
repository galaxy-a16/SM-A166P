.class public abstract Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "IDnsResolverUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onDnsHealthEvent:I = 0x1

.field static final TRANSACTION_onNat64PrefixEvent:I = 0x2

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 70
    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 78
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 83
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-interface {p0}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 89
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-interface {p0}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_0
    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 113
    :cond_1
    sget-object p1, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;

    .line 114
    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onPrivateDnsValidationEvent(Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;)V

    goto :goto_1

    .line 106
    :cond_2
    sget-object p1, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;

    .line 107
    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onNat64PrefixEvent(Landroid/net/resolv/aidl/Nat64PrefixEventParcel;)V

    goto :goto_1

    .line 99
    :cond_3
    sget-object p1, Landroid/net/resolv/aidl/DnsHealthEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/resolv/aidl/DnsHealthEventParcel;

    .line 100
    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onDnsHealthEvent(Landroid/net/resolv/aidl/DnsHealthEventParcel;)V

    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

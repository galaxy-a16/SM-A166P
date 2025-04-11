.class public abstract Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;
.super Landroid/os/Binder;
.source "IRemotelyProvisionedComponent.java"

# interfaces
.implements Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 55
    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    instance-of v1, v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .line 78
    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 86
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 91
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-interface {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 97
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-interface {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_0
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 149
    :cond_1
    sget-object p1, Landroid/hardware/security/keymint/MacedPublicKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/security/keymint/MacedPublicKey;

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-interface {p0, p1, p4}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->generateCertificateRequestV2([Landroid/hardware/security/keymint/MacedPublicKey;[B)[B

    move-result-object p0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 129
    sget-object p1, Landroid/hardware/security/keymint/MacedPublicKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Landroid/hardware/security/keymint/MacedPublicKey;

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 135
    new-instance p1, Landroid/hardware/security/keymint/DeviceInfo;

    invoke-direct {p1}, Landroid/hardware/security/keymint/DeviceInfo;-><init>()V

    .line 137
    new-instance p4, Landroid/hardware/security/keymint/ProtectedData;

    invoke-direct {p4}, Landroid/hardware/security/keymint/ProtectedData;-><init>()V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    move-object v7, p1

    move-object v8, p4

    .line 139
    invoke-interface/range {v2 .. v8}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->generateCertificateRequest(Z[Landroid/hardware/security/keymint/MacedPublicKey;[B[BLandroid/hardware/security/keymint/DeviceInfo;Landroid/hardware/security/keymint/ProtectedData;)[B

    move-result-object p0

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 142
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 116
    new-instance p4, Landroid/hardware/security/keymint/MacedPublicKey;

    invoke-direct {p4}, Landroid/hardware/security/keymint/MacedPublicKey;-><init>()V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-interface {p0, p1, p4}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->generateEcdsaP256KeyPair(ZLandroid/hardware/security/keymint/MacedPublicKey;)[B

    move-result-object p0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 121
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 106
    :cond_4
    invoke-interface {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object p0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

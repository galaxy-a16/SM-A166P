.class public abstract Landroid/security/samsungattestation/ISamsungAttestation$Stub;
.super Landroid/os/Binder;
.source "ISamsungAttestation.java"

# interfaces
.implements Landroid/security/samsungattestation/ISamsungAttestation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/samsungattestation/ISamsungAttestation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_attestKey:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/samsungattestation/ISamsungAttestation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/samsungattestation/ISamsungAttestation;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/security/samsungattestation/ISamsungAttestation;

    return-object v1

    :cond_1
    new-instance v1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "attestKey"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    invoke-static {p1}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .local v2, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v3, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .local v3, "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object v4

    .local v4, "_result":[Landroid/hardware/security/keymint/Certificate;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    nop

    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v4    # "_result":[Landroid/hardware/security/keymint/Certificate;
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.class public abstract Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub;
.super Landroid/os/Binder;
.source "ISehSession.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/ISehSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 97
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/biometrics/face/ISehSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;

    if-eqz v1, :cond_1

    .line 110
    check-cast v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;

    return-object v0

    .line 112
    :cond_1
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    :pswitch_2
    const-string p0, "getTaInfo"

    return-object p0

    :pswitch_3
    const-string p0, "getWrappedDataFromMemory"

    return-object p0

    :pswitch_4
    const-string p0, "authenticateForIssuance"

    return-object p0

    :pswitch_5
    const-string p0, "close"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "setRotation"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setFaceTag"

    return-object p0

    :pswitch_8
    const-string p0, "getFaceTag"

    return-object p0

    :pswitch_9
    const-string p0, "getFaceTagList"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "resume"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "pause"

    return-object p0

    :pswitch_c
    const-string p0, "isTAUnloaded"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "unloadTA"

    return-object p0

    :pswitch_e
    const-string p0, "loadTA"

    return-object p0

    :pswitch_f
    const-string p0, "getWrappedData"

    return-object p0

    :pswitch_10
    const-string p0, "authenticateExtension"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 0
    const p0, 0xfffffe

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 200
    invoke-static {p1}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .line 204
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 206
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 212
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 217
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 223
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 358
    :pswitch_0
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getTaInfo()Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :pswitch_1
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getWrappedDataFromMemory()Landroid/hardware/common/Ashmem;

    move-result-object p0

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 334
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 342
    sget-object p1, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/hardware/common/NativeHandle;

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 344
    invoke-interface/range {v2 .. v8}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->authenticateForIssuance(JI[BZLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 327
    :pswitch_3
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->close()V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->setRotation(I)I

    move-result p0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-interface {p0, p1, p4}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->setFaceTag(I[B)I

    move-result p0

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getFaceTag(I)Lvendor/samsung/hardware/biometrics/face/SehFaceTag;

    move-result-object p0

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 288
    :pswitch_7
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getFaceTagList()[I

    move-result-object p0

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 281
    :pswitch_8
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->resume()I

    move-result p0

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 274
    :pswitch_9
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->pause()I

    move-result p0

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 267
    :pswitch_a
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->isTAUnloaded()Z

    move-result p0

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 260
    :pswitch_b
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->unloadTA()I

    move-result p0

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 253
    :pswitch_c
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->loadTA()I

    move-result p0

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 246
    :pswitch_d
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getWrappedData()[B

    move-result-object p0

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 233
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-interface {p0, v2, v3, p1, p4}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->authenticateExtension(JI[B)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISehBiometricsFaceClientCallback.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;


# direct methods
.method public static synthetic $r8$lambda$zBV2dqrJx1Bcck9tsF8gYo9AQcs(Landroid/os/HwParcel;)Landroid/os/HidlMemory;
    .locals 0

    .line 0
    invoke-static {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->lambda$onTransact$0(Landroid/os/HwParcel;)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 643
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onTransact$0(Landroid/os/HwParcel;)Landroid/os/HidlMemory;
    .locals 1

    .line 852
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 854
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 698
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 699
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 700
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 701
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 3

    .line 672
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    filled-new-array {v1, v2, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x7t
        -0x69t
        0x10t
        -0x29t
        -0x6dt
        0xat
        -0x25t
        -0x10t
        0x7t
        0x54t
        -0x44t
        -0x7bt
        -0x66t
        0x1ft
        -0x2bt
        -0x40t
        0x71t
        -0x68t
        0xft
        -0x60t
        -0x75t
        0x35t
        0x28t
        -0x33t
        -0x1dt
        -0x39t
        -0x65t
        -0x44t
        -0xbt
        -0x73t
        -0xet
        0x4at
    .end array-data

    :array_1
    .array-data 1
        -0x4at
        -0x1bt
        0x5dt
        0x77t
        -0x6bt
        -0x45t
        -0x51t
        -0x30t
        0x11t
        -0x5t
        -0x6bt
        -0x5dt
        -0x4at
        -0x2dt
        -0x6bt
        0x4bt
        -0xat
        0x6ct
        0x34t
        -0x62t
        0x14t
        -0x31t
        0x10t
        0x7ft
        0x3bt
        0x72t
        0x3t
        0x2ct
        -0x1dt
        -0x32t
        -0x4ct
        0x48t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3

    .line 651
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 708
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11

    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    const-string v3, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v2, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 971
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1

    .line 960
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 963
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 964
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 950
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->ping()V

    .line 953
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 954
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 937
    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_1

    .line 903
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 906
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 910
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    .line 911
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    .line 912
    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 913
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v7, v2, :cond_1

    mul-int/lit8 v4, v7, 0x20

    int-to-long v4, v4

    .line 917
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_0

    .line 919
    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    .line 923
    invoke-virtual {v3, v4, v5, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 920
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v4, 0x0

    .line 927
    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 929
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 931
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 892
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 895
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 880
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 884
    invoke-virtual {p0, v2, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 885
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 869
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 872
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 873
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 848
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    new-instance v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub$$ExternalSyntheticLambda0;-><init>()V

    .line 856
    invoke-interface {v2, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HidlMemory;

    .line 857
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 858
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 859
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 860
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v8

    .line 861
    invoke-interface/range {v0 .. v5}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->sehOnPreviewFrame(Landroid/os/HidlMemory;IIII)V

    .line 862
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 863
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 835
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 842
    invoke-interface/range {v0 .. v6}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->sehOnAuthenticated(JIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 820
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v8

    .line 827
    invoke-interface/range {v0 .. v5}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->sehOnPreviewUpdated(Ljava/util/ArrayList;IIII)V

    .line 828
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 829
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 811
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 814
    invoke-interface {p0, v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onLockoutChanged(J)V

    goto/16 :goto_1

    .line 800
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 803
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 805
    invoke-interface {p0, v2, v3, v4, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(JLjava/util/ArrayList;I)V

    goto/16 :goto_1

    .line 789
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 794
    invoke-interface {p0, v2, v3, v4, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    goto/16 :goto_1

    .line 777
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 783
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V

    goto :goto_1

    .line 765
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 771
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAcquired(JIII)V

    goto :goto_1

    .line 753
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 756
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 759
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V

    goto :goto_1

    .line 741
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 745
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 746
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 747
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnrollResult(JIII)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 0
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 720
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

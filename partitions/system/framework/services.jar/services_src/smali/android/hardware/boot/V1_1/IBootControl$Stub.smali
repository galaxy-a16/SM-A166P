.class public abstract Landroid/hardware/boot/V1_1/IBootControl$Stub;
.super Landroid/os/HwBinder;
.source "IBootControl.java"

# interfaces
.implements Landroid/hardware/boot/V1_1/IBootControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
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

    .line 704
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 705
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 706
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 707
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 3

    .line 678
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
        -0x30t
        -0x5et
        0x52t
        -0x4et
        -0x28t
        -0x6t
        0x35t
        -0x78t
        0x79t
        0x8t
        -0x57t
        -0x6at
        -0x46t
        0x39t
        0x5ct
        -0xdt
        -0x6et
        -0x6at
        -0x7dt
        -0x6bt
        -0x4t
        0x30t
        -0x51t
        -0x55t
        0x79t
        0x1ft
        0x46t
        -0x20t
        -0x3et
        0x2at
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0x71t
        -0x6et
        -0x29t
        0x56t
        -0x52t
        -0x46t
        0x0t
        -0x55t
        -0x5dt
        0x2ft
        0x45t
        0x4t
        -0x68t
        0x1dt
        -0x8t
        0x17t
        0x2ft
        -0x4t
        -0x58t
        0x3et
        0x21t
        0xct
        0x48t
        0x38t
        -0x26t
        -0x41t
        0x29t
        0x5et
        0x53t
        -0x17t
        0x35t
        -0x70t
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

    .line 657
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.boot@1.0::IBootControl"

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "android.hardware.boot@1.1::IBootControl"

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
    const-string p0, "android.hardware.boot@1.1::IBootControl"

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

    .line 714
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6

    const-string p4, "android.hardware.boot@1.1::IBootControl"

    const/4 v0, 0x0

    const-string v1, "android.hardware.boot@1.0::IBootControl"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 965
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1

    .line 954
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 957
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 959
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 944
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->ping()V

    .line 947
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 931
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->setHALInstrumentation()V

    goto/16 :goto_1

    .line 897
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 900
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 904
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 905
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 906
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 907
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v2, p2, :cond_1

    mul-int/lit8 v0, v2, 0x20

    int-to-long v0, v0

    .line 911
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    .line 913
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 917
    invoke-virtual {p4, v0, v1, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 914
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    .line 921
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 923
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 886
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 889
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 890
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 874
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 878
    invoke-virtual {p0, p1, p2}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 879
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 863
    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 866
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 867
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 852
    :pswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-interface {p0}, Landroid/hardware/boot/V1_1/IBootControl;->getSnapshotMergeStatus()I

    move-result p0

    .line 855
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 856
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 857
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 840
    :pswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 843
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_1/IBootControl;->setSnapshotMergeStatus(I)Z

    move-result p0

    .line 844
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 845
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 828
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 831
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->getSuffix(I)Ljava/lang/String;

    move-result-object p0

    .line 832
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 833
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    .line 816
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 819
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->isSlotMarkedSuccessful(I)I

    move-result p0

    .line 820
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 821
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    .line 804
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 807
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->isSlotBootable(I)I

    move-result p0

    .line 808
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    .line 792
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 795
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->setSlotAsUnbootable(I)Landroid/hardware/boot/V1_0/CommandResult;

    .line 796
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    throw v0

    .line 780
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 783
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->setActiveBootSlot(I)Landroid/hardware/boot/V1_0/CommandResult;

    .line 784
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    throw v0

    .line 769
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->markBootSuccessful()Landroid/hardware/boot/V1_0/CommandResult;

    .line 772
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    throw v0

    .line 758
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getCurrentSlot()I

    move-result p0

    .line 761
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 762
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    .line 747
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getNumberSlots()I

    move-result p0

    .line 750
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 751
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 752
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

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

    const-string v0, "android.hardware.boot@1.1::IBootControl"

    .line 726
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

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/boot/V1_1/IBootControl$Stub;->interfaceDescriptor()Ljava/lang/String;

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

.class public Lcom/android/server/desktopmode/HardwareManager$DockState;
.super Ljava/lang/Object;
.source "HardwareManager.java"


# instance fields
.field public final mDesktopModeSupported:Z

.field public final mIsAdapter:Z

.field public final mRawDockUsbpdIds:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    const/16 v2, 0x2710

    .line 774
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 778
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Z)V
    .locals 0

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput p1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 783
    iput-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    .line 784
    iput-object p3, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 785
    iput-boolean p4, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    return-void
.end method

.method public static dockTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "TYPE_DEX_RESERVED_DONGLE"

    return-object p0

    :pswitch_1
    const-string p0, "TYPE_MULTIPORT_ADAPTER_EE_P5400"

    return-object p0

    :pswitch_2
    const-string p0, "TYPE_TARGUS_ADAPTER"

    return-object p0

    :pswitch_3
    const-string p0, "TYPE_MULTIPORT_ADAPTER_3"

    return-object p0

    :pswitch_4
    const-string p0, "TYPE_DEX_CABLE"

    return-object p0

    :pswitch_5
    const-string p0, "TYPE_HDMI_ADAPTER"

    return-object p0

    :pswitch_6
    const-string p0, "TYPE_MULTIPORT_ADAPTER_2"

    return-object p0

    :pswitch_7
    const-string p0, "TYPE_MULTIPORT_ADAPTER_1"

    return-object p0

    :pswitch_8
    const-string p0, "TYPE_DEX_PAD_RECOVERY"

    return-object p0

    :pswitch_9
    const-string p0, "TYPE_DEX_RESERVED"

    return-object p0

    :pswitch_a
    const-string p0, "TYPE_DEX_PAD"

    return-object p0

    :pswitch_b
    const-string p0, "TYPE_INTERNAL_SCREEN"

    return-object p0

    :pswitch_c
    const-string p0, "TYPE_UNOFFICIAL_ADAPTER"

    return-object p0

    :pswitch_d
    const-string p0, "TYPE_DEX_STATION"

    return-object p0

    :pswitch_e
    const-string p0, "TYPE_UNDOCKED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2710
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


# virtual methods
.method public getType()I
    .locals 0

    .line 789
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    return p0
.end method

.method public isAdapter()Z
    .locals 0

    .line 809
    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    return p0
.end method

.method public isDesktopModeSupported()Z
    .locals 0

    .line 793
    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    return p0
.end method

.method public isDexPad()Z
    .locals 1

    .line 805
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v0, 0x2714

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2716

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDexStation()Z
    .locals 1

    .line 801
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v0, 0x2711

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRawDockUsbpdIdSupported()Z
    .locals 1

    .line 813
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$smresolveDockType(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUndocked()Z
    .locals 1

    .line 797
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v0, 0x2710

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DockState(mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDesktopModeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRawDockUsbpdIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

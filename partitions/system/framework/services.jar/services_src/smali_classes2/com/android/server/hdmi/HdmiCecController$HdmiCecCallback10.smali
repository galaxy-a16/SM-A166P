.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;
.super Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;
.source "HdmiCecController.java"


# instance fields
.field public final mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 0

    .line 1617
    invoke-direct {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;-><init>()V

    .line 1618
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    return-void
.end method


# virtual methods
.method public onCecMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)V
    .locals 3

    .line 1624
    iget-object v0, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1625
    :goto_0
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1626
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1628
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iget v1, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    iget p1, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    return-void
.end method

.method public onHotplugEvent(Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V
    .locals 1

    .line 1633
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iget v0, p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

    iget-boolean p1, p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onHotplugEvent(IZ)V

    return-void
.end method

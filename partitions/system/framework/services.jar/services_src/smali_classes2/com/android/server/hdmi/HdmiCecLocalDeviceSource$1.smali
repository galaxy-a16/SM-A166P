.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiCecLocalDeviceSource.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "HdmiCecLocalDeviceSource"

    if-ne p1, v0, :cond_0

    const-string p1, "TV power toggle: TV power status unknown"

    .line 158
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    const/16 p1, 0x6b

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_2
    const-string p1, "TV power toggle: turning on TV"

    .line 170
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;)V

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "TV power toggle: turning off TV"

    .line 164
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    .line 167
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    :cond_4
    :goto_1
    return-void
.end method

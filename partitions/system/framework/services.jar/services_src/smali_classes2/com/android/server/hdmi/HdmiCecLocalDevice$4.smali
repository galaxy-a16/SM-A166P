.class public Lcom/android/server/hdmi/HdmiCecLocalDevice$4;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public final synthetic val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->-$$Nest$fgetmHandler(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1281
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    return-void
.end method

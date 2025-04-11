.class public Lcom/android/server/hdmi/HdmiControlService$24;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$lastInput:I


# virtual methods
.method public onComplete(I)V
    .locals 0

    .line 4101
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$lastInput:I

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    return-void
.end method

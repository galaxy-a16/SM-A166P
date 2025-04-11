.class public Lcom/android/server/hdmi/HdmiControlService$23$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$23;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$23;)V
    .locals 0

    .line 3958
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$23$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3961
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$23;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 3962
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$23;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 3963
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$23;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 3964
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$23$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$23;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearCecLocalDevices()V

    return-void
.end method

.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method public static synthetic $r8$lambda$sHE7ODxyvUEmkWjvo4axoZssdNI(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->lambda$onHotplugEvent$1(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zN74oPJTivdwN7HPTyckyXx_D9w(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;II[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->lambda$onCecMessage$0(II[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0

    .line 1600
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCecMessage$0(II[B)V
    .locals 0

    .line 1604
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$mhandleIncomingCecCommand(Lcom/android/server/hdmi/HdmiCecController;II[B)V

    return-void
.end method

.method private synthetic lambda$onHotplugEvent$1(IZ)V
    .locals 0

    .line 1609
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$mhandleHotplug(Lcom/android/server/hdmi/HdmiCecController;IZ)V

    return-void
.end method


# virtual methods
.method public onCecMessage(II[B)V
    .locals 2

    .line 1603
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHotplugEvent(IZ)V
    .locals 2

    .line 1609
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

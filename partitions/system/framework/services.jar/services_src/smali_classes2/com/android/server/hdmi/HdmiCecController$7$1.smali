.class public Lcom/android/server/hdmi/HdmiCecController$7$1;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$7;

.field public final synthetic val$finalError:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 759
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$fgetmHdmiCecAtomWriter(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iget-object v2, v1, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 762
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$mgetCallingUid(Lcom/android/server/hdmi/HdmiCecController;)I

    move-result v1

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    const/4 v4, 0x2

    .line 759
    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    .line 765
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz v0, :cond_0

    .line 766
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    :cond_0
    return-void
.end method

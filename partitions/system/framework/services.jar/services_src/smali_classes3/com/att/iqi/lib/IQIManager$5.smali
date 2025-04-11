.class Lcom/att/iqi/lib/IQIManager$5;
.super Lcom/att/iqi/IServiceStateChangeCallback$Stub;
.source "IQIManager.java"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$5;->this$0:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {p0}, Lcom/att/iqi/IServiceStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .locals 2

    .line 529
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$5;->this$0:Lcom/att/iqi/lib/IQIManager;

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 530
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.class Lcom/att/iqi/lib/IQIManager$4;
.super Lcom/att/iqi/IProfileChangedCallback$Stub;
.source "IQIManager.java"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$4;->this$0:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {p0}, Lcom/att/iqi/IProfileChangedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileChanged()V
    .locals 1

    .line 520
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$4;->this$0:Lcom/att/iqi/lib/IQIManager;

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 521
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

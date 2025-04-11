.class public Lcom/android/server/display/VolumeController$2;
.super Ljava/lang/Object;
.source "VolumeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/VolumeController;

.field public final synthetic val$keyEvent:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/VolumeController;I)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    iput p2, p0, Lcom/android/server/display/VolumeController$2;->val$keyEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    invoke-static {v0}, Lcom/android/server/display/VolumeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/VolumeController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VolumeController$2;->val$keyEvent:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 117
    iget-object p0, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    invoke-static {p0}, Lcom/android/server/display/VolumeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/VolumeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.class public Lcom/android/server/BatteryService$11$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$11;

.field public final synthetic val$audiomode:I


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$11;I)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iput p2, p0, Lcom/android/server/BatteryService$11$1;->val$audiomode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1142
    iget v0, p0, Lcom/android/server/BatteryService$11$1;->val$audiomode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object v0, v0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1144
    iget-object p0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object p0, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object v0, v0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1147
    iget-object v0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object v0, v0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1148
    iget-object p0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object p0, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object v0, v0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object v0, v0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1152
    iget-object p0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object p0, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

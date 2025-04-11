.class public Lcom/android/server/VaultKeeperService$1;
.super Landroid/os/Handler;
.source "VaultKeeperService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/VaultKeeperService;


# direct methods
.method public constructor <init>(Lcom/android/server/VaultKeeperService;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 165
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "VaultKeeperService"

    const/4 v2, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 181
    iget-object p0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p0}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string/jumbo p0, "wakelock is released!!"

    .line 182
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmHandler(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmHandler(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string/jumbo p1, "wakelock is acquired!!"

    .line 173
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_3
    iget-object p0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p0}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmHandler(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method

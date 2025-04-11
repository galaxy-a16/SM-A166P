.class public Lcom/android/server/display/WifiDisplayMcfManager$1;
.super Ljava/lang/Object;
.source "WifiDisplayMcfManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BleAdvertiserService onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fputmService(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fputmIsBounded(Lcom/android/server/display/WifiDisplayMcfManager;Z)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmService(Lcom/android/server/display/WifiDisplayMcfManager;)Landroid/os/Messenger;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BleAdvertiserService onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fputmService(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Messenger;)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fputmIsBounded(Lcom/android/server/display/WifiDisplayMcfManager;Z)V

    return-void
.end method

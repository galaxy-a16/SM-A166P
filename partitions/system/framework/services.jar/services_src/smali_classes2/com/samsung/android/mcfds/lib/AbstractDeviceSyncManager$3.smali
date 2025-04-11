.class public Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;
.super Ljava/lang/Object;
.source "AbstractDeviceSyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string/jumbo v0, "onServiceConnected"

    .line 273
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 275
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p2}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$102(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 276
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p1, v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V

    .line 277
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$300(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string/jumbo v0, "onServiceDisconnected"

    .line 281
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 283
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$102(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 284
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-virtual {p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->stop()V

    .line 285
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p0, v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V

    return-void
.end method

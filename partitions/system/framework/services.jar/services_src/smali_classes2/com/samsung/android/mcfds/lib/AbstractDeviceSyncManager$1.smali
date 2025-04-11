.class public Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;
.super Ljava/lang/Object;
.source "AbstractDeviceSyncManager.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain(ILandroid/os/Bundle;)Landroid/os/Message;
    .locals 0

    .line 121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 122
    iput p1, p0, Landroid/os/Message;->what:I

    .line 123
    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public sendMessage(Landroid/os/Message;)I
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "sendMessage : Service is invalid"

    .line 130
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 135
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;->internalCommand(Landroid/os/Message;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessage : [ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

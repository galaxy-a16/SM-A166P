.class public Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;
.super Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;
.source "AbstractDeviceSyncManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-direct {p0}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .locals 2

    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceStateListener - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p1, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 178
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-virtual {p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->start()V

    .line 179
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$000(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v1, :cond_1

    .line 182
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p0, v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    return-void

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p1, v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 186
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-virtual {p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->stop()V

    .line 187
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p0, v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V

    :cond_2
    :goto_0
    return-void
.end method

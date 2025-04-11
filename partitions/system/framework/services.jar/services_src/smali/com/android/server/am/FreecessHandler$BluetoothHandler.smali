.class public Lcom/android/server/am/FreecessHandler$BluetoothHandler;
.super Landroid/os/Handler;
.source "FreecessHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$BluetoothHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$BluetoothHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object v1, v1, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->isInBTTargetList(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string v1, "handle FREECESS_UNFREEZE_BT_SCAN_MSG...."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$BluetoothHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->onUnFreeze(I)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string v1, "handle FREECESS_FREEZE_BT_SCAN_MSG...."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$BluetoothHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->onFreeze(I)V

    :cond_5
    :goto_0
    return-void
.end method

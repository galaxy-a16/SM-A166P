.class public Lcom/samsung/accessory/manager/SAccessoryManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SAccessoryManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "misc_event"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "sec_plug_type"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x40

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", misc_event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", plug event: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mbatteryChanged(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mWPCRead(Lcom/samsung/accessory/manager/SAccessoryManager;)I

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "do not auth wireless charging"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x200

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0, v5}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    iget-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetwirelesschargerState(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result p1

    if-ne p1, v5, :cond_4

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    :cond_4
    :goto_2
    return-void
.end method

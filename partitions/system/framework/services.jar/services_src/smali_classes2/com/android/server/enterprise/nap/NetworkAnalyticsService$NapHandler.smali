.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V
    .locals 0

    .line 1564
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 1565
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1588
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "NetworkAnalytics:Service"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1670
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-nez p1, :cond_0

    return-void

    .line 1672
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$msendStatusToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1657
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "reason"

    const/4 v2, 0x0

    .line 1659
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 1661
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE OFF"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_bindAndActivateOnReboot(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 1665
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p1, :cond_4

    const-string p1, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE ON"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_deactivateAllProfiles(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    .line 1634
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 1635
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_userRemovedAction(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1591
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1592
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_handleNewProfileRegistration(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1648
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-gtz p1, :cond_5

    .line 1650
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p0, :cond_a

    const-string p0, "handleMessage: ACTION_ON_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1653
    :cond_5
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_unregisterAllProfiles(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_0

    .line 1639
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-gtz p1, :cond_6

    .line 1641
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p0, :cond_a

    const-string p0, "handleMessage: ACTION_ON_PRE_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1644
    :cond_6
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_deactivateAllProfiles(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto :goto_0

    .line 1629
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1630
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_packageAddedAction(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V

    goto :goto_0

    .line 1624
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1625
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_packageRemovedAction(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V

    goto :goto_0

    .line 1611
    :pswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    if-nez p0, :cond_a

    .line 1613
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p0, :cond_7

    const-string p0, "handleMessage:UNREGISTER_CLIENT:handleObj null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 1596
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$fgetmConfigStore(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeTables()V

    goto :goto_0

    .line 1619
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 1620
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_bindAndActivateOnReboot(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1600
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1601
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1602
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_9

    .line 1604
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p0, :cond_8

    const-string p0, "handleMessage:ACTIVATE_MONITOR_CLIENT:handleObj null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    .line 1607
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {p0, v0, p1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-$$Nest$m_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 4212
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 4213
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p0, "SdpHandler"

    .line 4214
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 4219
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string v1, "SdpHandler"

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;)V

    .line 4220
    iget v0, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, "userId"

    const-string v2, "com.android.settings/.password.ChooseLockGeneric$InternalActivity"

    const-string v3, "activity_task"

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4329
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4331
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "engineId"

    .line 4332
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "state"

    .line 4333
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4335
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleSendBroadcastForStateChange(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;III)V

    goto/16 :goto_0

    .line 4314
    :pswitch_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4316
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 4317
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4319
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz p1, :cond_1

    .line 4320
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4321
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const-string v0, "Enforce change password"

    invoke-virtual {p1, v2, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4299
    :pswitch_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4301
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 4302
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4304
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz p1, :cond_1

    .line 4305
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4306
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const-string v0, "Legacy reset password"

    invoke-virtual {p1, v2, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4283
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4285
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 4286
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4287
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearLegacyResetStatus(I)V

    .line 4289
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz p0, :cond_1

    .line 4290
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4291
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const/4 p1, 0x0

    const-string v0, "Legacy reset timeout"

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 4276
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleDeviceOwnerCleared(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    goto :goto_0

    .line 4271
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4272
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleCleanupUser(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    goto :goto_0

    .line 4263
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4264
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleStartUser(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    goto :goto_0

    .line 4258
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4259
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleUserRemoved(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    goto :goto_0

    .line 4253
    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4254
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleUserAdded(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    goto :goto_0

    .line 4243
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4245
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "pkgName"

    const-string v2, ""

    .line 4246
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4248
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandlePackageRemoved(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;I)V

    goto :goto_0

    .line 4237
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4238
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 4239
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V

    goto :goto_0

    .line 4232
    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4233
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockSdpIfRequired(I)V

    goto :goto_0

    .line 4222
    :pswitch_d
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misSupportedDevice(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "SdpManagerImpl.Handler"

    const-string/jumbo v0, "received MSG_SYSTEM_READY. "

    .line 4225
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4227
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$monSystemReady(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

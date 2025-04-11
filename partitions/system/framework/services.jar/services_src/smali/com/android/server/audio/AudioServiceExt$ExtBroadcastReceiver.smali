.class public Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioServiceExt.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioServiceExt;


# direct methods
.method public static synthetic $r8$lambda$TqsHSIXPFHTX-eZ1n6JHMUQi1pE(Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->lambda$handleIntent$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hl1o_GxJIFj6I45O6JLShvElBYI(Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->lambda$handleIntent$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioServiceExt;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServiceExt;Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioServiceExt;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$0()V
    .locals 2

    .line 312
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p0}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmContext(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    return-void
.end method

.method private synthetic lambda$handleIntent$1()V
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p0}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmContext(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmDvfsHelper(Lcom/android/server/audio/AudioServiceExt;)Lcom/samsung/android/server/audio/DvfsHelper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/audio/DvfsHelper;->setScreenOn(Z)V

    .line 311
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmDvfsHelper(Lcom/android/server/audio/AudioServiceExt;)Lcom/samsung/android/server/audio/DvfsHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/audio/DvfsHelper;->setScreenOn(Z)V

    .line 317
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    const-string/jumbo v0, "mute"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fputmAllSoundMute(Lcom/android/server/audio/AudioServiceExt;I)V

    .line 323
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p0}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$msetAllSoundMute(Lcom/android/server/audio/AudioServiceExt;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "AS.AudioServiceExt"

    if-eqz v1, :cond_3

    .line 325
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz p1, :cond_a

    const-string p1, "android.intent.extra.user_handle"

    .line 326
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_USER_SWITCHED :: userId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioServiceExt;->updateThemeSound(IZ)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "com.samsung.intent.action.WB_AMR"

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p0, p2}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$mupdateCallBandInfo(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    invoke-static {p1, v3}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmData(Landroid/content/Context;Z)V

    .line 337
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p0}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioServiceExt;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p0

    const-string p1, "dev_shutdown=true"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v1, "com.sec.media.action.AUDIOCORE_LOGGING"

    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "[logging] receive ACTION_AUDIOCORE_LOGGING"

    .line 341
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p1, v3}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmData(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_6
    const-string v1, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "[logging] receive ACTION_AUDIOCORE_BIGDATA_APP"

    .line 345
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {p1, v2}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmData(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_7
    const-string p1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "ACTION_SUBINFO_RECORD_UPDATED received"

    .line 349
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmPhoneStateHelper(Lcom/android/server/audio/AudioServiceExt;)Lcom/samsung/android/server/audio/PhoneStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->unregisterPhoneStateListener()V

    .line 351
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p0}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmPhoneStateHelper(Lcom/android/server/audio/AudioServiceExt;)Lcom/samsung/android/server/audio/PhoneStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->registerPhoneStateListener()V

    goto :goto_0

    :cond_8
    const-string p1, "com.android.launcher3.quickstep.closeall"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "onReceive close all"

    .line 353
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p0}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioServiceExt;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p0

    const-string/jumbo p1, "l_recovery_restarting=true"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    const-string p1, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    .line 357
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 358
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    const-string/jumbo p1, "value"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 299
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 301
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

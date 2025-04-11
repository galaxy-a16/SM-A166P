.class public Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static synthetic $r8$lambda$lpgb5duazK5QX9V-aJr5JqL4NJs(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->lambda$handleIntent$1(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lsQLZmFmbWkt1Llatn3pbhuHVaU(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->lambda$handleIntent$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 15343
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$0()V
    .locals 0

    .line 15546
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundAppPolicyManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->checkAndUpdateAppList()V

    return-void
.end method

.method private synthetic lambda$handleIntent$1(Landroid/content/Intent;)V
    .locals 0

    .line 15556
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 15354
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 15356
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15357
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->updateAudioServiceNotificationChannel()V

    goto/16 :goto_b

    :cond_0
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 15358
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.extra.UID"

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string v7, "AS.AudioService"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_a

    const-string v3, "android.intent.extra.REPLACING"

    .line 15359
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_a

    .line 15360
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 15361
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    .line 15362
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") is removed"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15365
    invoke-static {v3, v1, v9}, Lcom/samsung/android/server/audio/utils/BtUtils;->checkAndUpdateAuracastApp(ILjava/lang/String;I)V

    const-string v1, "com.samsung.android.oneconnect"

    .line 15367
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15368
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetPinDevice()V

    goto/16 :goto_2

    .line 15370
    :cond_1
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v1

    invoke-virtual {v1, v3, v8}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v1

    .line 15371
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->removeItem(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15373
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "multisound_app"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( current Packagelist = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15380
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ":"

    .line 15381
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 15382
    array-length v8, v1

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_4

    aget-object v11, v1, v10

    .line 15383
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 15384
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v5, v11

    goto :goto_1

    .line 15387
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 15392
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15393
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0xacb

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 15394
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v16, 0x0

    .line 15393
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 15395
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->showToast()V

    .line 15397
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( new Packagelist = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15399
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 15407
    :cond_6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->getIgnoredUid()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 15408
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v1

    invoke-virtual {v1, v3, v9}, Lcom/android/server/audio/MediaFocusControl;->setIgnoreAudioFocus(IZ)V

    .line 15411
    :cond_7
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPackageListHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PackageListHelper;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/server/audio/PackageListHelper;->removePackageForName(Landroid/content/Context;Ljava/lang/String;)V

    .line 15413
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v1

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolume(II)V

    .line 15415
    :goto_2
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v1, :cond_8

    .line 15416
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v1

    invoke-static {v4, v1, v2, v9}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 15419
    :cond_8
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAppVolumeFromSoundAssistant(Lcom/android/server/audio/AudioService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->delete(I)V

    const-string v1, "com.samsung.android.soundassistant"

    .line 15421
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 15422
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mclearSoundAssistantSettings(Lcom/android/server/audio/AudioService;)V

    .line 15425
    :cond_9
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$munSetSoundSettingEventBroadcastIntent(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 15427
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 15428
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/audio/AudioGameManager;->deleteGameUid(I)V

    goto/16 :goto_b

    :cond_a
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 15430
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 15431
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 15432
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 15433
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 15434
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPackageListHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PackageListHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/server/audio/PackageListHelper;->addPackage(Landroid/content/Context;ILjava/lang/String;)V

    .line 15436
    :cond_b
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v3, :cond_c

    .line 15437
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v3

    invoke-static {v4, v3, v2, v8}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 15440
    :cond_c
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 15441
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    .line 15445
    :cond_d
    invoke-static {v1, v2, v8}, Lcom/samsung/android/server/audio/utils/BtUtils;->checkAndUpdateAuracastApp(ILjava/lang/String;I)V

    goto/16 :goto_b

    :cond_e
    const-string v3, "android.intent.action.TurnOff_MultiSound"

    .line 15447
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "enabled"

    if-eqz v3, :cond_f

    .line 15448
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0xacb

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 15449
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v16, 0x0

    .line 15448
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 15450
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.setting.multisound"

    .line 15451
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    .line 15452
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15453
    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15454
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_b

    :cond_f
    const-string v3, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    .line 15455
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 15456
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearNotification()V

    goto/16 :goto_b

    :cond_10
    const-string v3, "com.samsung.android.audio.headup.changedevice"

    .line 15457
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 15458
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    move-result v1

    .line 15459
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v3

    .line 15460
    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object v3

    .line 15459
    invoke-virtual {v2, v1, v3, v9}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    .line 15461
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearHeadUpNotification()V

    goto/16 :goto_b

    :cond_11
    const-string v3, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 15462
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v2, "status"

    .line 15463
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 15464
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v2

    if-ne v1, v8, :cond_12

    goto :goto_3

    :cond_12
    move v8, v9

    :goto_3
    invoke-virtual {v2, v8}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setDLNAEnabled(Z)V

    .line 15465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsDLNAEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isDLNAEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_13
    const-string v3, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 15466
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v10, "isSupportDisplayVolumeControl"

    const-string/jumbo v11, "state"

    const v12, 0x8000

    const/4 v13, 0x3

    if-eqz v3, :cond_1b

    .line 15467
    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 15468
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 15469
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isWifiDisplayConnected()Z

    move-result v4

    .line 15470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiDisplay device state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15471
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v5

    invoke-virtual {v5, v12, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkSendBecomingNoisyIntent(III)I

    .line 15474
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v14

    if-ne v2, v8, :cond_14

    move v15, v8

    goto :goto_4

    :cond_14
    move v15, v9

    :goto_4
    const v16, 0x8000

    const-string v17, "0"

    const-string/jumbo v18, "remote_submix"

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    if-ne v2, v8, :cond_16

    if-nez v4, :cond_16

    const-string v3, "WifiDisplay is connected."

    .line 15481
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15482
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->getLiveCaptionEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 15483
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 15484
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 15485
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v13}, Lcom/android/server/audio/AudioService;->-$$Nest$mcheckAllFixedVolumeDevices(Lcom/android/server/audio/AudioService;I)V

    .line 15486
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 15489
    :cond_15
    invoke-static {v8}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setWifiDisplayConnected(Z)V

    .line 15490
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->registerDeviceStatusListener(Landroid/content/Context;)V

    goto :goto_5

    :cond_16
    if-nez v2, :cond_19

    if-eqz v4, :cond_19

    const-string v3, "WifiDisplay is disconnected."

    .line 15493
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15494
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->getLiveCaptionEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 15495
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15496
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15497
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v13}, Lcom/android/server/audio/AudioService;->-$$Nest$mcheckAllFixedVolumeDevices(Lcom/android/server/audio/AudioService;I)V

    .line 15498
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 15501
    :cond_17
    invoke-static {v9}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setWifiDisplayConnected(Z)V

    .line 15502
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15503
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 15505
    :cond_18
    invoke-static {v9}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    .line 15506
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->unregisterDeviceStatusListener(Landroid/content/Context;)V

    :cond_19
    :goto_5
    if-ne v2, v8, :cond_1a

    .line 15512
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v2

    .line 15513
    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 15512
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    goto :goto_6

    .line 15515
    :cond_1a
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    .line 15517
    :goto_6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v2

    .line 15518
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSupportDisplayVolumeControl()Z

    move-result v2

    .line 15517
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setScreenSharingStateResumed(Z)V

    .line 15519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportDisplayVolumeControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSupportDisplayVolumeControl()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1b
    const-string v3, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    .line 15521
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 15522
    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_1c

    .line 15526
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v2

    .line 15527
    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 15526
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    goto :goto_7

    .line 15529
    :cond_1c
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    .line 15531
    :goto_7
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v2

    .line 15532
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSupportDisplayVolumeControl()Z

    move-result v2

    .line 15531
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setScreenSharingStateResumed(Z)V

    .line 15534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive SEM_WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED isSupportDisplayVolumeControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v0

    .line 15535
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSupportDisplayVolumeControl()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15534
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1d
    const-string v3, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    .line 15537
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v0, "CONNECTION_MODE"

    .line 15538
    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 15539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "l_smart_view_fixed_volume_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v8, :cond_1e

    const-string/jumbo v0, "true"

    goto :goto_8

    :cond_1e
    const-string v0, "false"

    .line 15542
    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15539
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1f
    const-string v3, "com.samsung.android.scpm.policy.UPDATE.Audio"

    .line 15543
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 15544
    sget-object v1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v3, "Receive SCPM update intent"

    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 15545
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundAppPolicyManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 15546
    new-instance v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;)V

    invoke-static {v1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_20
    const-string v3, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 15548
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 15549
    sget-object v1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v3, "Receive SCPM clear intent"

    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 15550
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundAppPolicyManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 15551
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v1

    const-string v2, "APP_LIST_VERSION"

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(Ljava/lang/String;I)V

    .line 15552
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundAppPolicyManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->init(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_21
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 15554
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 15556
    new-instance v2, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;Landroid/content/Intent;)V

    invoke-static {v2}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_22
    const-string v3, "com.sec.media.action.mute_interval"

    .line 15557
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 15558
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$mcheckMuteInterval(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_b

    :cond_23
    const-string v3, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    .line 15559
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v2, "enable"

    .line 15560
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 15561
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setDualA2dpMode(ZLandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_b

    :cond_24
    const-string v3, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 15562
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    if-eqz v3, :cond_25

    .line 15563
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 15564
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postActiveBluetoothDeviceChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_b

    :cond_25
    const-string v3, "com.sec.android.intent.action.SPLIT_SOUND"

    .line 15565
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 15566
    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 15567
    invoke-static {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    goto/16 :goto_b

    :cond_26
    const-string v3, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 15568
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2a

    const-string v2, "com.samsung.android.bluetooth.cast.extra.STATE"

    .line 15569
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    .line 15570
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 15571
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 15572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT cast device state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " role : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v4, :cond_27

    if-nez v2, :cond_2d

    .line 15575
    :cond_27
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    if-ne v2, v4, :cond_28

    move v6, v8

    goto :goto_9

    :cond_28
    move v6, v9

    :goto_9
    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmIsBluetoothCastState(Lcom/android/server/audio/AudioService;Z)V

    .line 15576
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v5

    invoke-virtual {v5, v12, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkSendBecomingNoisyIntent(III)I

    if-ne v1, v4, :cond_2d

    .line 15578
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v10

    if-ne v2, v4, :cond_29

    move v11, v8

    goto :goto_a

    :cond_29
    move v11, v9

    :goto_a
    const v12, 0x8000

    const-string v13, "0"

    const-string/jumbo v14, "remote_submix"

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_b

    :cond_2a
    const-string v3, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 15584
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 15585
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    if-nez v2, :cond_2d

    .line 15586
    new-instance v2, Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "AudioService"

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    goto :goto_b

    .line 15588
    :cond_2b
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz v3, :cond_2d

    const-string v3, "com.samsung.bluetooth.device.action.AUDIO_TYPE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 15589
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 15590
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2d

    .line 15592
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v3, "com.samsung.bluetooth.device.extra.AUDIO_TYPE"

    .line 15593
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2c

    if-eqz v0, :cond_2d

    .line 15595
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 15596
    invoke-static {v8}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    goto :goto_b

    :cond_2c
    if-eqz v0, :cond_2d

    .line 15599
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 15600
    invoke-static {v9}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    :cond_2d
    :goto_b
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 15347
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15349
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

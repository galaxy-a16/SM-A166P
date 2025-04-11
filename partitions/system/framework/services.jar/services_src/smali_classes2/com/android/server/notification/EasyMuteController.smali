.class public Lcom/android/server/notification/EasyMuteController;
.super Ljava/lang/Object;
.source "EasyMuteController.java"


# instance fields
.field public final RINGTONE_PLAYER:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field public final mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRegister:Z

.field public mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field public mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field public mMotionOn:Z

.field public mNotificationPlayerBinder:Landroid/os/IBinder;

.field public mOverTurnOn:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRegister(Lcom/android/server/notification/EasyMuteController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationPlayerBinder(Lcom/android/server/notification/EasyMuteController;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationPlayerBinder(Lcom/android/server/notification/EasyMuteController;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEasyMuteEnabled(Lcom/android/server/notification/EasyMuteController;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/EasyMuteController;->setEasyMuteEnabled(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EasyMuteController"

    .line 39
    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->TAG:Ljava/lang/String;

    const-string v1, "android.media.IRingtonePlayer"

    .line 40
    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->RINGTONE_PLAYER:Ljava/lang/String;

    const/4 v2, 0x0

    .line 52
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 83
    new-instance v3, Lcom/android/server/notification/EasyMuteController$1;

    invoke-direct {v3, p0}, Lcom/android/server/notification/EasyMuteController$1;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 55
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    .line 57
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    .line 59
    new-instance v3, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-direct {v3, p0, p1}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;-><init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    .line 60
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v4, "master_motion"

    .line 61
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 60
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v4, "motion_overturn"

    .line 63
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 62
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    invoke-virtual {v3, v5}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    .line 67
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 68
    const-class v3, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v3, v1, v5

    const-string/jumbo v3, "setOnCompletionListener"

    .line 73
    invoke-virtual {p1, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NoSuchMethodException"

    .line 78
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    const-string p1, "ClassNotFoundException"

    .line 75
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener()V
    .locals 5

    .line 135
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->isEnable()Z

    move-result v0

    const-string v1, "EasyMuteController"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 139
    iput-boolean v3, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string v0, "Reg. OverTurn"

    .line 140
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    if-nez v0, :cond_2

    .line 143
    new-instance v0, Lcom/android/server/notification/EasyMuteController$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EasyMuteController$2;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 157
    new-instance v3, Lcom/android/server/notification/EasyMuteController$3;

    invoke-direct {v3, p0}, Lcom/android/server/notification/EasyMuteController$3;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "RemoteException"

    .line 181
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v0, "InvocationTargetException"

    .line 175
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_0

    :catch_2
    const-string v0, "IllegalAccessException"

    .line 169
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 171
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_0

    :cond_0
    const-string p0, "Register failed. mEasyMuteMotionManager is null"

    .line 185
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "Register failed. already registered or setting not eanbled"

    .line 188
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final setEasyMuteEnabled(ZZ)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasyMute updated 1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " 2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasyMuteController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "setEasyMuteEnabled no setting changed"

    .line 126
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    .line 109
    iput-boolean p2, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 111
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "motion_recognition"

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "setEasyMuteEnabled mEasyMuteMotionManager in not null"

    .line 116
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "setEasyMuteEnabled setting off"

    .line 119
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz p1, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_4
    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :goto_1
    return-void
.end method

.method public unregisterListener()V
    .locals 3

    .line 194
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string v1, "EasyMuteController"

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string p0, "UnReg. OverTurn"

    .line 198
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "UnRegister failed. mEasyMuteMotionManager is null"

    .line 200
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "UnRegister failed. no registered"

    .line 203
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

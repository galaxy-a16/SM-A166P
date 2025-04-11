.class public Lcom/android/server/notification/NotificationReminder;
.super Ljava/lang/Object;
.source "NotificationReminder.java"


# static fields
.field public static final REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final notificationIntent:Landroid/content/Intent;


# instance fields
.field public isAlarmWorking:Z

.field public final mActiveNotiList:Ljava/util/ArrayList;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAppSettingList:Ljava/lang/String;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mEnableReminder:Z

.field public mEnableVibrate:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInterval:I

.field public mNeedMigration:Z

.field public final mNotificationReminderObserver:Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

.field public mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field public mReminderIntent:Landroid/app/PendingIntent;

.field public final mReminderReceiver:Landroid/content/BroadcastReceiver;

.field public mReminderType:I

.field public mVibratorHelper:Lcom/android/server/notification/VibratorHelper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppSettingList(Lcom/android/server/notification/NotificationReminder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/NotificationReminder;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableReminder(Lcom/android/server/notification/NotificationReminder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableVibrate(Lcom/android/server/notification/NotificationReminder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationReminder;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterval(Lcom/android/server/notification/NotificationReminder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReminderType(Lcom/android/server/notification/NotificationReminder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAppSettingList(Lcom/android/server/notification/NotificationReminder;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnableReminder(Lcom/android/server/notification/NotificationReminder;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnableVibrate(Lcom/android/server/notification/NotificationReminder;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInterval(Lcom/android/server/notification/NotificationReminder;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReminderType(Lcom/android/server/notification/NotificationReminder;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->cancelAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindNotificationByListLocked(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationReminder;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationReminder;->isRemindNeeded(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mplaySoundVibration(Lcom/android/server/notification/NotificationReminder;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->playSoundVibration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessage(Lcom/android/server/notification/NotificationReminder;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->setReminderAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEnablePackageList(Lcom/android/server/notification/NotificationReminder;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->updateEnablePackageList()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.Notification_Reminder_Alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationReminder;->notificationIntent:Landroid/content/Intent;

    const/4 v0, 0x7

    .line 111
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 110
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/PreferencesHelper;Landroid/app/AlarmManager;Lcom/android/server/notification/VibratorHelper;)V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationReminder;->isAlarmWorking:Z

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    .line 115
    new-instance v2, Lcom/android/server/notification/NotificationReminder$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationReminder$1;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mReminderReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 142
    new-instance p1, Lcom/android/server/notification/NotificationReminder$2;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationReminder$2;-><init>(Lcom/android/server/notification/NotificationReminder;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object p3, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 170
    iget-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    .line 171
    iput-object p5, p0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 172
    iput-object p4, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 174
    new-instance p2, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;-><init>(Lcom/android/server/notification/NotificationReminder;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mNotificationReminderObserver:Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    .line 175
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "notification_reminder_selectable"

    .line 176
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 175
    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "notification_reminder_type"

    .line 178
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 177
    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "notification_reminder_app_list"

    .line 180
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 179
    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 181
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "notification_reminder_vibrate"

    .line 182
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 181
    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 183
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "time_key"

    .line 184
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 183
    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x0

    .line 185
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->update(Landroid/net/Uri;)V

    .line 187
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.action.Notification_Reminder_Alarm"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 188
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->startMigrationIfNeeded()V

    return-void
.end method


# virtual methods
.method public addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/NotificationReminder$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationReminder$3;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelAlarm()V
    .locals 2

    const-string v0, "cancelAlarm"

    const-string v1, "NotificationReminder"

    .line 327
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-string v0, "cancelAlarm - cancel Alarm"

    .line 329
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "\n  NotificationReminder :"

    .line 233
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      EnableReminder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      EnableVibrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    if-nez v1, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      mActiveNotiList, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 241
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "  "

    .line 244
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 2

    .line 278
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 280
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCallAndMsgPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 426
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.samsung.android.messaging"

    .line 427
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.dialer"

    .line 428
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultSms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationReminder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    :try_start_0
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultDialer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unexpected exception occurred when getting default dialer package."

    .line 438
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    :goto_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 441
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 445
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isGroupSummaryNotification(Landroid/app/Notification;)Z
    .locals 0

    .line 407
    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRemindNeeded(Ljava/util/ArrayList;)Z
    .locals 6

    .line 384
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NotificationReminder"

    if-eqz v0, :cond_0

    const-string p0, "The active notification list is empty."

    .line 385
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 390
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 391
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 392
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationReminder;->isGroupSummaryNotification(Landroid/app/Notification;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 393
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationReminder;->isSuppressedBubbleNotification(Landroid/app/Notification;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 396
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/PreferencesHelper;->isReminderEnabled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Clearable checked item found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final isSuppressedBubbleNotification(Landroid/app/Notification;)Z
    .locals 1

    .line 411
    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x1000

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 412
    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "NotificationReminder"

    const-string p1, "bubbleMetadata is null."

    .line 417
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public final playSoundVibration()V
    .locals 15

    .line 336
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "NotificationReminder(com.android.settings)"

    const-string v3, "NotificationReminder"

    if-ne v0, v1, :cond_0

    .line 337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string/jumbo v4, "playVibration only"

    .line 339
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    sget-object v3, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    throw p0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 348
    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v4

    .line 347
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_5

    .line 350
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 357
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 359
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v6, "playSound"

    .line 361
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v7, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    const/4 v8, 0x0

    invoke-interface {v1, v0, v6, v8, v7}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    .line 364
    sget-object v9, Lcom/android/server/notification/NotificationManagerService;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    if-eqz v9, :cond_2

    const-string/jumbo v10, "playback"

    const-string v11, "com.android.settings"

    .line 365
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 366
    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v12

    const-string v13, ""

    const-string/jumbo v14, "repeat_notification_alerts"

    .line 365
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "SemAudioGoodCatchManager has not created"

    .line 368
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "playVibration"

    .line 372
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    sget-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 377
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    throw p0

    .line 377
    :catch_0
    :cond_4
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_5
    return-void
.end method

.method public removeFromNotificationList(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/NotificationReminder$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationReminder$4;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendMessage(I)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 521
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setReminderAlarm()V
    .locals 8

    .line 288
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    const-string v1, "NotificationReminder"

    if-eqz v0, :cond_0

    const-string p0, "Reminder alarm is exist before calling setReminder Alarm."

    .line 289
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "setReminderAlarm"

    .line 293
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/notification/NotificationReminder;->notificationIntent:Landroid/content/Intent;

    const/high16 v3, 0x12000000

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 297
    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    const/16 v2, 0xb4

    if-ge v0, v2, :cond_1

    .line 299
    iput v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 300
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    const/4 v3, -0x2

    const-string/jumbo v4, "time_key"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "The interval is set to the wrong value, so it is reset to the default interval value.(180 sec)."

    .line 301
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    int-to-long v6, v6

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 306
    invoke-virtual {v0, v3, v4, v5, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    int-to-long v6, v6

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 309
    invoke-virtual {v0, v3, v4, v5, p0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public setReminderAppEnabled(Ljava/lang/String;IZ)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReminderAppEnabled - pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " enabled:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationReminder"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/16 p1, 0x3ea

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x3eb

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public final startMigrationIfNeeded()V
    .locals 5

    .line 262
    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/PreferencesHelper;->removeAllReminderSetting(I)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "reminder_migration_finished"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationReminder;->mNeedMigration:Z

    if-eqz v1, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/NotificationReminder$6;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationReminder$6;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final updateEnablePackageList()V
    .locals 8

    .line 461
    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationReminder;->getCallAndMsgPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 466
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 467
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 468
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 469
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "selectAll"

    .line 470
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "NotificationReminder"

    if-eqz v4, :cond_3

    .line 471
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 472
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 473
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 474
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateEnablePackageList SELECT_All pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    .line 478
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 479
    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v6, v3, v4, v1}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    .line 487
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 489
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 490
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v3, ";"

    .line 492
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 495
    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/PreferencesHelper;->removeAllReminderSetting(I)V

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnablePackageList : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installPackages : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 502
    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v6, v3, v4, v1}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 511
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationReminder;->mNeedMigration:Z

    if-eqz v0, :cond_7

    .line 512
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "reminder_migration_finished"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_7
    return-void
.end method

.method public updatePackageListForRestore()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/NotificationReminder$5;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationReminder$5;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

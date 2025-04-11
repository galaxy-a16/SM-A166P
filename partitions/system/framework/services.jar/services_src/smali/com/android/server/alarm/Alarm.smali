.class public Lcom/android/server/alarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field public static final NUM_POLICIES:I = 0x6


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public mExactAllowReason:I

.field public mIdleOptions:Landroid/os/Bundle;

.field public mMaxWhenElapsed:J

.field public mPolicyWhenElapsed:[J

.field public mUsingReserveQuota:Z

.field public mWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public origType:I

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

.field public final repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public final windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPolicyWhenElapsed(Lcom/android/server/alarm/Alarm;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    return-object p0
.end method

.method public constructor <init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput v1, v0, Lcom/android/server/alarm/Alarm;->type:I

    .line 157
    iput v1, v0, Lcom/android/server/alarm/Alarm;->origType:I

    move-wide v8, p2

    .line 158
    iput-wide v8, v0, Lcom/android/server/alarm/Alarm;->origWhen:J

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v1, v8, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    .line 159
    :goto_1
    iput-boolean v8, v0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const/4 v8, 0x6

    new-array v8, v8, [J

    .line 161
    iput-object v8, v0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide v2, v8, v9

    .line 163
    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 164
    iput-wide v4, v0, Lcom/android/server/alarm/Alarm;->windowLength:J

    add-long/2addr v2, v4

    .line 165
    invoke-static {v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    move-wide/from16 v2, p8

    .line 166
    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 167
    iput-object v6, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v2, p11

    .line 168
    iput-object v2, v0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 169
    iput-object v7, v0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    .line 170
    invoke-static {v6, v7, p1}, Lcom/android/server/alarm/Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 171
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v1, p14

    .line 172
    iput v1, v0, Lcom/android/server/alarm/Alarm;->flags:I

    move-object/from16 v1, p15

    .line 173
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move/from16 v1, p16

    .line 174
    iput v1, v0, Lcom/android/server/alarm/Alarm;->uid:I

    move-object/from16 v2, p17

    .line 175
    iput-object v2, v0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v3, p18

    .line 176
    iput-object v3, v0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    move/from16 v3, p19

    .line 177
    iput v3, v0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    if-eqz v6, :cond_2

    .line 178
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iput-object v2, v0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 179
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    :cond_3
    iput v1, v0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 180
    iput-boolean v9, v0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    return-void
.end method

.method public static exactReasonToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const-string p0, "--unknown--"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "prioritized"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "listener"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "policy_permission"

    return-object p0

    :pswitch_3
    const-string p0, "compat"

    return-object p0

    :pswitch_4
    const-string p0, "allow-listed"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "permission"

    return-object p0

    :pswitch_6
    const-string p0, "N/A"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "*alarm*:"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "*walarm*:"

    :goto_1
    if-eqz p0, :cond_2

    .line 186
    invoke-virtual {p0, p2}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static policyIndexToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")--"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "gms_manager"

    return-object p0

    :cond_1
    const-string/jumbo p0, "tare"

    return-object p0

    :cond_2
    const-string p0, "battery_saver"

    return-object p0

    :cond_3
    const-string p0, "device_idle"

    return-object p0

    :cond_4
    const-string p0, "app_standby"

    return-object p0

    :cond_5
    const-string/jumbo p0, "requester"

    return-object p0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    .line 0
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "--unknown--"

    return-object p0

    :cond_0
    const-string p0, "ELAPSED"

    return-object p0

    :cond_1
    const-string p0, "ELAPSED_WAKEUP"

    return-object p0

    :cond_2
    const-string p0, "RTC"

    return-object p0

    :cond_3
    const-string p0, "RTC_WAKEUP"

    return-object p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 4

    .line 348
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    const-string/jumbo v0, "tag="

    .line 349
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "type="

    .line 352
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 353
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    iget v3, p0, Lcom/android/server/alarm/Alarm;->origType:I

    if-eq v0, v3, :cond_2

    const-string v0, " origType="

    .line 356
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Lcom/android/server/alarm/Alarm;->origType:I

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v0, " origWhen="

    .line 360
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 362
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_3
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    const-string v0, " window="

    .line 366
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 368
    iget v0, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const-string v0, " exactAllowReason="

    .line 369
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 370
    iget v0, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->exactReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    const-string v0, " repeatInterval="

    .line 372
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 373
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, " count="

    .line 374
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 375
    iget v0, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " flags=0x"

    .line 376
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 377
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "policyWhenElapsed:"

    .line 379
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x6

    if-ge v1, v0, :cond_5

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v2, v0, v1

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 384
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "whenElapsed="

    .line 386
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " maxWhenElapsed="

    .line 388
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 390
    iget-boolean p2, p0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    if-eqz p2, :cond_6

    const-string p2, " usingReserveQuota=true"

    .line 391
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 393
    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 395
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p2, :cond_7

    const-string p2, "Alarm clock:"

    .line 396
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  triggerTime="

    .line 398
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 399
    new-instance p2, Ljava/util/Date;

    iget-object p3, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p3}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  showIntent="

    .line 401
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 404
    :cond_7
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p2, :cond_8

    const-string/jumbo p2, "operation="

    .line 405
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 408
    :cond_8
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p2, :cond_9

    const-string/jumbo p2, "listener="

    .line 409
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 412
    :cond_9
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz p2, :cond_a

    const-string p2, "idle-options="

    .line 413
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 3

    .line 419
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    .line 421
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10e00000002L

    .line 422
    iget v2, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide p4, 0x10300000003L

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10300000004L

    .line 424
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10300000005L

    .line 425
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10500000006L

    .line 426
    iget v0, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10500000007L

    .line 427
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 428
    iget-object p4, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p4, :cond_0

    const-wide v0, 0x10b00000008L

    .line 429
    invoke-virtual {p4, p1, v0, v1}, Landroid/app/AlarmManager$AlarmClockInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 431
    :cond_0
    iget-object p4, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    const-wide v0, 0x10b00000009L

    .line 432
    invoke-virtual {p4, p1, v0, v1}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 434
    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p0, :cond_2

    .line 435
    invoke-interface {p0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide p4, 0x1090000000aL

    invoke-virtual {p1, p4, p5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 438
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getMaxWhenElapsed()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    return-wide v0
.end method

.method public getPolicyElapsed(I)J
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getRequestedElapsed()J
    .locals 2

    .line 215
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getWhenElapsed()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    return-wide v0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 193
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setPolicyElapsed(IJ)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide p2, v0, p1

    .line 244
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->updateWhenElapsed()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Alarm{"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    iget v2, p0, Lcom/android/server/alarm/Alarm;->origType:I

    if-eq v1, v2, :cond_0

    const-string v1, " origType "

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v1, p0, Lcom/android/server/alarm/Alarm;->origType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " origWhen "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " whenElapsed "

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateWhenElapsed()Z
    .locals 9

    .line 252
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    const-wide/16 v2, 0x0

    .line 253
    iput-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 255
    iget-wide v4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-object v6, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v6, v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_0
    iget-wide v3, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 260
    iget-object v5, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v5, v5, v2

    iget-wide v7, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v5

    .line 262
    iget-wide v7, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 264
    iget-wide v7, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long p0, v0, v7

    if-nez p0, :cond_1

    cmp-long p0, v3, v5

    if-eqz p0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.class public Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field public final synthetic val$done:[Z

.field public final synthetic val$endTime:J

.field public final synthetic val$timeout:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "!@Start shutdown radios"

    const-string v1, "ShutdownThread"

    .line 1037
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$smnewTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    .line 1041
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1045
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    if-nez v5, :cond_2

    const-string v6, "Turning off cellular radios..."

    .line 1047
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetMETRIC_RADIO()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->-$$Nest$smmetricStarted(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->shutdownAllRadios()V

    :cond_2
    const-string v6, "Waiting for Radio..."

    .line 1052
    invoke-static {v1, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    :goto_2
    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_6

    .line 1056
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmRebootHasProgressBar()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1057
    iget v8, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v9, v8

    sub-long/2addr v9, v6

    long-to-double v6, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v9

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    mul-double/2addr v6, v9

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x6

    .line 1060
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetsInstance()Lcom/android/server/power/ShutdownThread;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/android/server/power/ShutdownThread;->-$$Nest$msetRebootProgress(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_3
    if-nez v5, :cond_4

    .line 1064
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_4

    const-string v6, "!@Radio turned off."

    .line 1066
    invoke-static {v1, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetMETRIC_RADIO()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->-$$Nest$smmetricEnded(Ljava/lang/String;)V

    .line 1068
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetTRON_METRICS()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetMETRIC_RADIO()Ljava/lang/String;

    move-result-object v7

    .line 1069
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "ShutdownRadio"

    invoke-virtual {v0, v8, v6, v7}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    :cond_4
    if-eqz v5, :cond_5

    const-string v0, "!@Radio shutdown complete."

    .line 1074
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v4, p0, v3

    goto :goto_3

    :cond_5
    const-string v6, "!@before sleep"

    .line 1078
    invoke-static {v1, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x64

    .line 1079
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    const-string v6, "!@after sleep"

    .line 1080
    invoke-static {v1, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[Phone off retry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " radio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    goto/16 :goto_2

    :cond_6
    :goto_3
    return-void
.end method

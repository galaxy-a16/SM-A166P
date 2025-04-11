.class Lcom/android/server/job/controllers/FlexibilityController$FcConfig;
.super Ljava/lang/Object;
.source "FlexibilityController.java"


# static fields
.field static final DEFAULT_DEADLINE_PROXIMITY_LIMIT_MS:J = 0xdbba0L

.field static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_MS:J = 0xf731400L


# instance fields
.field public DEADLINE_PROXIMITY_LIMIT_MS:J

.field final DEFAULT_PERCENT_TO_DROP_FLEXIBLE_CONSTRAINTS:[I

.field public FALLBACK_FLEXIBILITY_DEADLINE_MS:J

.field public FLEXIBILITY_ENABLED:Z

.field public MAX_RESCHEDULED_DEADLINE_MS:J

.field public MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

.field public PERCENTS_TO_DROP_NUM_FLEXIBLE_CONSTRAINTS:[I

.field public RESCHEDULED_JOB_DEADLINE_MS:J

.field public mShouldReevaluateConstraints:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 4

    .line 665
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 666
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    const/16 v0, 0x46

    const/16 v1, 0x50

    const/16 v2, 0x32

    const/16 v3, 0x3c

    .line 691
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENT_TO_DROP_FLEXIBLE_CONSTRAINTS:[I

    .line 700
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FLEXIBILITY_ENABLED:Z

    const-wide/32 v1, 0xdbba0

    .line 702
    iput-wide v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    const-wide/32 v1, 0xf731400

    .line 704
    iput-wide v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    const-wide/32 v1, 0xea60

    .line 705
    iput-wide v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 708
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_NUM_FLEXIBLE_CONSTRAINTS:[I

    const-wide/32 v0, 0x36ee80

    .line 711
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    const-wide/32 v0, 0x19bfcc00

    .line 713
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 817
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 818
    const-class v0, Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    .line 819
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 822
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FLEXIBILITY_ENABLED:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fc_enable_flexibility"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 823
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fc_flexibility_deadline_proximity_limit_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 824
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fc_fallback_flexibility_deadline_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 825
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 826
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fc_min_time_between_flexibility_alarms_ms"

    .line 825
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "fc_percents_to_drop_num_flexible_constraints"

    .line 827
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_NUM_FLEXIBLE_CONSTRAINTS:[I

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 829
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fc_rescheduled_job_deadline_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 830
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "fc_max_rescheduled_deadline_ms"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 832
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final parsePercentToDropString(Ljava/lang/String;)[I
    .locals 5

    const-string v0, "JobScheduler.Flex"

    const-string v1, ","

    .line 792
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 793
    sget v1, Lcom/android/server/job/controllers/FlexibilityController;->NUM_FLEXIBLE_CONSTRAINTS:I

    new-array v2, v1, [I

    .line 794
    array-length v3, p1

    if-eq v1, v3, :cond_0

    .line 795
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENT_TO_DROP_FLEXIBLE_CONSTRAINTS:[I

    return-object p0

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 798
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 800
    :try_start_0
    aget-object v4, p1, v1

    .line 801
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v3, :cond_1

    const-string p1, "Percents to drop constraints were not in increasing order."

    .line 807
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENT_TO_DROP_FLEXIBLE_CONSTRAINTS:[I

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Provided string was improperly formatted."

    .line 803
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENT_TO_DROP_FLEXIBLE_CONSTRAINTS:[I

    return-object p0

    :cond_2
    return-object v2
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 4

    .line 718
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "fc_fallback_flexibility_deadline_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "fc_enable_flexibility"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "fc_flexibility_deadline_proximity_limit_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "fc_percents_to_drop_num_flexible_constraints"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "fc_rescheduled_job_deadline_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "fc_max_rescheduled_deadline_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_0

    :sswitch_6
    const-string v0, "fc_min_time_between_flexibility_alarms_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-wide/32 v0, 0xf731400

    .line 760
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    .line 761
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmFallbackFlexibilityDeadlineMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_9

    .line 762
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmFallbackFlexibilityDeadlineMs(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 763
    iput-boolean v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    goto/16 :goto_1

    .line 720
    :pswitch_1
    invoke-virtual {p1, p2, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-boolean p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mDeviceSupportsFlexConstraints:Z

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FLEXIBILITY_ENABLED:Z

    .line 722
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-boolean p2, p1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eq p2, v1, :cond_9

    .line 723
    iput-boolean v1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 724
    iput-boolean v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    if-eqz v1, :cond_8

    .line 726
    iget-object p0, p1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/PrefetchController;->registerPrefetchChangedListener(Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;)V

    goto/16 :goto_1

    .line 729
    :cond_8
    iget-object p0, p1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/PrefetchController;->unRegisterPrefetchChangedListener(Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;)V

    goto/16 :goto_1

    :pswitch_2
    const-wide/32 v0, 0xdbba0

    .line 752
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    .line 753
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_9

    .line 754
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 755
    iput-boolean v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    goto/16 :goto_1

    :pswitch_3
    const-string v0, ""

    .line 778
    invoke-virtual {p1, p2, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_NUM_FLEXIBLE_CONSTRAINTS:[I

    if-eqz p1, :cond_9

    .line 781
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmPercentToDropConstraints(Lcom/android/server/job/controllers/FlexibilityController;)[I

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_NUM_FLEXIBLE_CONSTRAINTS:[I

    .line 782
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 784
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_NUM_FLEXIBLE_CONSTRAINTS:[I

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmPercentToDropConstraints(Lcom/android/server/job/controllers/FlexibilityController;[I)V

    .line 785
    iput-boolean v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    goto :goto_1

    :pswitch_4
    const-wide/32 v0, 0x36ee80

    .line 736
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    .line 737
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmRescheduledJobDeadline(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_9

    .line 738
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmRescheduledJobDeadline(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 739
    iput-boolean v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    goto :goto_1

    :pswitch_5
    const-wide/32 v0, 0x19bfcc00

    .line 744
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    .line 745
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmMaxRescheduledDeadline(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_9

    .line 746
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmMaxRescheduledDeadline(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 747
    iput-boolean v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    goto :goto_1

    :pswitch_6
    const-wide/32 v0, 0xea60

    .line 768
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 769
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmMinTimeBetweenFlexibilityAlarmsMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_9

    .line 771
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmMinTimeBetweenFlexibilityAlarmsMs(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 772
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 773
    invoke-virtual {p1, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    .line 774
    iput-boolean v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    :cond_9
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x777ea8fd -> :sswitch_6
        -0x5dcd0a55 -> :sswitch_5
        -0x2035877c -> :sswitch_4
        0xa60ebb6 -> :sswitch_3
        0x22a4f609 -> :sswitch_2
        0x300bab1f -> :sswitch_1
        0x71a3d7ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

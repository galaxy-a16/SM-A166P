.class public Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# instance fields
.field public final mTag:Ljava/lang/String;

.field public final mUid:I

.field public final mWakeupRtc:J

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;JILjava/lang/String;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mWakeupRtc:J

    .line 890
    iput p4, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mUid:I

    .line 891
    iput-object p5, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    .line 895
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mWakeupRtc:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "rtc"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 896
    iget p2, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mUid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "tag"

    .line 897
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 898
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

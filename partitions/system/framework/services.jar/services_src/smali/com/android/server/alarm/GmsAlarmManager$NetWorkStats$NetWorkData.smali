.class public Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# instance fields
.field public endTime:J

.field public startTime:J

.field public totalTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;-><init>()V

    return-void
.end method


# virtual methods
.method public setEndTime(J)V
    .locals 2

    iput-wide p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    iget-wide v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    return-void
.end method

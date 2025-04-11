.class public Lcom/android/server/am/mars/MARsBigData$LevelInfo;
.super Ljava/lang/Object;
.source "MARsBigData.java"


# instance fields
.field public batteryUsage:D

.field public packageName:Ljava/lang/String;

.field public preBatteryUsage:D

.field public prePackageCnt:I

.field public reason:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/mars/MARsBigData;

.field public totalSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/MARsBigData;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->batteryUsage:D

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->packageName:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->prePackageCnt:I

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->preBatteryUsage:D

    iput-object v2, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->reason:Ljava/lang/String;

    return-void
.end method

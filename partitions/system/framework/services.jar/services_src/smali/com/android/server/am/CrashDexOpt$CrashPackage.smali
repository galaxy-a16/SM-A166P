.class public Lcom/android/server/am/CrashDexOpt$CrashPackage;
.super Ljava/lang/Object;
.source "CrashDexOpt.java"


# instance fields
.field public count:I

.field public mTimeStamp:J

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;->mTimeStamp:J

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;->count:I

    return-void
.end method


# virtual methods
.method public increaseCount()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;->count:I

    return v0
.end method

.method public setCrashPackageData(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;->mTimeStamp:J

    .line 50
    iput-object p1, p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;->pkg:Ljava/lang/String;

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;->count:I

    return-void
.end method

.class public Lcom/android/server/power/stats/KernelWakelockStats$Entry;
.super Ljava/lang/Object;
.source "KernelWakelockStats.java"


# instance fields
.field public mCount:I

.field public mTotalTime:J

.field public mVersion:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mCount:I

    .line 31
    iput-wide p2, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mTotalTime:J

    .line 32
    iput p4, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mVersion:I

    return-void
.end method

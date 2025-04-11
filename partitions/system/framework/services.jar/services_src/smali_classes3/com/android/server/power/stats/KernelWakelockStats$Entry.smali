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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mCount:I

    iput-wide p2, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mTotalTime:J

    iput p4, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mVersion:I

    return-void
.end method

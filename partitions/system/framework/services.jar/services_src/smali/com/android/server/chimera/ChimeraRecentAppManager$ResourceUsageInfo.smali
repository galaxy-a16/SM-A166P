.class public Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;
.super Ljava/lang/Object;
.source "ChimeraRecentAppManager.java"


# instance fields
.field public mAppPss:J

.field public mAvailMem:J

.field public mPsiFullTotal:J

.field public mPsiSomeTotal:J

.field public mUid:I


# direct methods
.method public constructor <init>(IJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mUid:I

    iput-wide p2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAppPss:J

    iput-wide p4, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAvailMem:J

    iput-wide p6, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiSomeTotal:J

    iput-wide p8, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiFullTotal:J

    return-void
.end method


# virtual methods
.method public getAppPss()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAppPss:J

    return-wide v0
.end method

.method public getAvailMem()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAvailMem:J

    return-wide v0
.end method

.method public getPsiFullTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiFullTotal:J

    return-wide v0
.end method

.method public getPsiSomeTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiSomeTotal:J

    return-wide v0
.end method

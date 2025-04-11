.class public Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# instance fields
.field public mCnt:I

.field public mMaxCnt:I

.field public mTotalCnt:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mTotalCnt:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;-><init>()V

    return-void
.end method

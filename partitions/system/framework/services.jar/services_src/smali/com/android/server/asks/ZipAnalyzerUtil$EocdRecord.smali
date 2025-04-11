.class public Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;
.super Ljava/lang/Object;
.source "ZipAnalyzerUtil.java"


# instance fields
.field public centralDirOffset:I

.field public centralDirSize:I

.field public commentLen:S

.field public diskNumber:S

.field public numEntriesThisDisk:S

.field public numEntriesTotal:S

.field public startDiskNumber:S


# direct methods
.method public constructor <init>(SSSSIIS)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-short p1, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->diskNumber:S

    .line 126
    iput-short p2, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->startDiskNumber:S

    .line 127
    iput-short p3, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesThisDisk:S

    .line 128
    iput-short p4, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesTotal:S

    .line 129
    iput p5, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirSize:I

    .line 130
    iput p6, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirOffset:I

    .line 131
    iput-short p7, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->commentLen:S

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->diskNumber:S

    iput-short p2, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->startDiskNumber:S

    iput-short p3, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesThisDisk:S

    iput-short p4, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesTotal:S

    iput p5, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirSize:I

    iput p6, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirOffset:I

    iput-short p7, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->commentLen:S

    return-void
.end method

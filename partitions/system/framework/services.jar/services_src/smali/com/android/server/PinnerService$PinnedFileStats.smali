.class public Lcom/android/server/PinnerService$PinnedFileStats;
.super Ljava/lang/Object;
.source "PinnerService.java"


# instance fields
.field public final filename:Ljava/lang/String;

.field public final sizeKb:I

.field public final uid:I


# direct methods
.method public constructor <init>(ILcom/android/server/PinnerService$PinnedFile;)V
    .locals 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lcom/android/server/PinnerService$PinnedFileStats;->uid:I

    .line 291
    iget-object p1, p2, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    .line 292
    iget p1, p2, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    div-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/server/PinnerService$PinnedFileStats;->sizeKb:I

    return-void
.end method

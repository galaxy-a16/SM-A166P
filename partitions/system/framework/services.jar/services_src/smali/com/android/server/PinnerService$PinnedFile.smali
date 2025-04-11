.class public final Lcom/android/server/PinnerService$PinnedFile;
.super Ljava/lang/Object;
.source "PinnerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final bytesPinned:I

.field public final fileName:Ljava/lang/String;

.field public mAddress:J

.field public final mapSize:I


# direct methods
.method public constructor <init>(JILjava/lang/String;I)V
    .locals 0

    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    iput-wide p1, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    .line 1152
    iput p3, p0, Lcom/android/server/PinnerService$PinnedFile;->mapSize:I

    .line 1153
    iput-object p4, p0, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 1154
    iput p5, p0, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1159
    iget-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1160
    iget v2, p0, Lcom/android/server/PinnerService$PinnedFile;->mapSize:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PinnerService;->-$$Nest$smsafeMunmap(JJ)V

    const-wide/16 v0, -0x1

    .line 1161
    iput-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 1167
    invoke-virtual {p0}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    return-void
.end method

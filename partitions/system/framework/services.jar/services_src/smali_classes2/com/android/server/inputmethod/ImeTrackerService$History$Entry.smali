.class public final Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;
.super Ljava/lang/Object;
.source "ImeTrackerService.java"


# instance fields
.field public mDuration:J

.field public final mOrigin:I

.field public mPhase:I

.field public final mReason:I

.field public mRequestWindowName:Ljava/lang/String;

.field public final mSequenceNumber:I

.field public final mStartTime:J

.field public mStatus:I

.field public final mTag:Ljava/lang/String;

.field public final mType:I

.field public final mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrigin(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhase(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReason(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestWindowName(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSequenceNumber(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mSequenceNumber:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartTime(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPhase(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRequestWindowName(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStatus(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 2

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-static {}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$sfgetsSequenceNumber()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mSequenceNumber:I

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 317
    iput-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    const-string/jumbo v0, "not set"

    .line 344
    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 350
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    .line 351
    iput p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    .line 352
    iput p3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    .line 353
    iput p4, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    .line 354
    iput p5, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    .line 355
    iput p6, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIILcom/android/server/inputmethod/ImeTrackerService$History$Entry-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method

.class public final Lcom/android/server/am/UidObserverController$ChangeRecord;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# instance fields
.field public capability:I

.field public change:I

.field public ephemeral:Z

.field public isPending:Z

.field public procAdj:I

.field public procState:I

.field public procStateSeq:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V
    .locals 2

    .line 510
    iget-boolean v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    iput-boolean v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 511
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 512
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 513
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 514
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 515
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 516
    iget-boolean v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    iput-boolean v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 517
    iget-wide v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iput-wide v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    return-void
.end method

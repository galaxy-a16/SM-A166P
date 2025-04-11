.class public final Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# instance fields
.field public final label:Ljava/lang/String;

.field public final lastNandswapTimeDiff:J

.field public final ppnState:I

.field public subitems:Ljava/util/ArrayList;

.field public final swap:J

.field public final writeback:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->swap:J

    iput-wide p4, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->writeback:J

    iput p6, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->ppnState:I

    iput-wide p7, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    return-void
.end method

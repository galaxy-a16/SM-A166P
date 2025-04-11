.class public final Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# instance fields
.field public adj:I

.field public lastNandswapTime:J

.field public pid:I

.field public ppnState:I

.field public final ppnStateLock:Ljava/lang/Object;

.field public procState:I

.field public processName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/chimera/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;III)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    iput p4, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I

    iput p5, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->procState:I

    return-void
.end method

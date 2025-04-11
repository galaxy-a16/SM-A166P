.class public final synthetic Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/QuickSwap;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/QuickSwap;ILcom/android/server/chimera/PerProcessNandswap$NandswapRecord;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/QuickSwap;

    iput p2, p0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    iput-wide p4, p0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;->f$3:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/QuickSwap;

    iget v1, p0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    iget-wide v3, p0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/chimera/QuickSwap;->$r8$lambda$q4YDhG_wdSeY1DQX1rKMrEHBXhQ(Lcom/android/server/chimera/QuickSwap;ILcom/android/server/chimera/PerProcessNandswap$NandswapRecord;J)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

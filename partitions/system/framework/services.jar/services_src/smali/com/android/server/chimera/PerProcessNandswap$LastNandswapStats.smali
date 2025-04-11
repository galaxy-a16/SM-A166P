.class public final Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mRssAfterNandswap:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;->mRssAfterNandswap:[J

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRssAfterNandswap()[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;->mRssAfterNandswap:[J

    return-object p0
.end method

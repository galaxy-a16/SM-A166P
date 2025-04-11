.class final enum Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;
.super Ljava/lang/Enum;
.source "DamonReclaimer.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

.field public static final enum bytes_reclaim_tried_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

.field public static final enum bytes_reclaimed_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

.field public static final enum nr_reclaim_tried_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

.field public static final enum nr_reclaimed_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;


# direct methods
.method public static synthetic $values()[Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;
    .locals 4

    .line 362
    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->bytes_reclaimed_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    sget-object v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->nr_reclaim_tried_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    sget-object v2, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->bytes_reclaim_tried_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    sget-object v3, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->nr_reclaimed_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 363
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    const-string v1, "bytes_reclaimed_regions"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->bytes_reclaimed_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    .line 364
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    const-string/jumbo v1, "nr_reclaim_tried_regions"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->nr_reclaim_tried_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    .line 365
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    const-string v1, "bytes_reclaim_tried_regions"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->bytes_reclaim_tried_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    .line 366
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    const-string/jumbo v1, "nr_reclaimed_regions"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->nr_reclaimed_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    .line 362
    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->$values()[Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->$VALUES:[Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;
    .locals 1

    .line 362
    const-class v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;
    .locals 1

    .line 362
    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->$VALUES:[Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    invoke-virtual {v0}, [Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    return-object v0
.end method

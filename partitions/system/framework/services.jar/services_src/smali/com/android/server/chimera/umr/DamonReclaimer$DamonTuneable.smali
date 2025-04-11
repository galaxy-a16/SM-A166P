.class final enum Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;
.super Ljava/lang/Enum;
.source "DamonReclaimer.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum aggr_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum can_reclaim:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum cpu_affinity:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum enabled:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum min_age:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum min_nr_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum quota_ms:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum quota_reset_interval_ms:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum quota_sz:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum sample_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum wmarks_high:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum wmarks_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum wmarks_low:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

.field public static final enum wmarks_mid:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;


# direct methods
.method public static synthetic $values()[Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;
    .locals 14

    .line 148
    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->enabled:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->can_reclaim:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v2, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->min_age:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v3, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->sample_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v4, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->min_nr_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v5, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->wmarks_high:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v6, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->wmarks_mid:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v7, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->wmarks_low:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v8, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->aggr_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v9, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->quota_ms:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v10, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->quota_sz:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v11, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->wmarks_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v12, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->quota_reset_interval_ms:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    sget-object v13, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->cpu_affinity:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    filled-new-array/range {v0 .. v13}, [Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 149
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->enabled:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 150
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string v1, "can_reclaim"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->can_reclaim:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 151
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "min_age"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->min_age:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 152
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "sample_interval"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->sample_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 153
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "min_nr_regions"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->min_nr_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 154
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "wmarks_high"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->wmarks_high:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 155
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "wmarks_mid"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->wmarks_mid:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 156
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "wmarks_low"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->wmarks_low:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 157
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string v1, "aggr_interval"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->aggr_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 158
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "quota_ms"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->quota_ms:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 159
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "quota_sz"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->quota_sz:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 160
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "wmarks_interval"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->wmarks_interval:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 161
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string/jumbo v1, "quota_reset_interval_ms"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->quota_reset_interval_ms:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 162
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string v1, "cpu_affinity"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->cpu_affinity:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    .line 148
    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->$values()[Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->$VALUES:[Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;
    .locals 1

    .line 148
    const-class v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;
    .locals 1

    .line 148
    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->$VALUES:[Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    invoke-virtual {v0}, [Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    return-object v0
.end method

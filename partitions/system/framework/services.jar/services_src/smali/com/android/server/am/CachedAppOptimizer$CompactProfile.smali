.class public final enum Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
.super Ljava/lang/Enum;
.source "CachedAppOptimizer.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public static final enum ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public static final enum FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public static final enum NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public static final enum SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 4

    .line 308
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 309
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 310
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string v1, "SOME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 311
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string v1, "ANON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 312
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string v1, "FULL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 308
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->$values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->$VALUES:[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 1

    .line 308
    const-class v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 1

    .line 308
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->$VALUES:[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {v0}, [Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object v0
.end method

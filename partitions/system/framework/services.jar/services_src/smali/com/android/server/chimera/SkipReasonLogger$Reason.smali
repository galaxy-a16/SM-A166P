.class final enum Lcom/android/server/chimera/SkipReasonLogger$Reason;
.super Ljava/lang/Enum;
.source "SkipReasonLogger.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum HAS_CONNECTION_PROVIDER:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum KILL_ONLY_ONE_SVC_AT_A_TIME:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;


# direct methods
.method public static synthetic $values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .locals 13

    .line 18
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v3, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v10, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v11, Lcom/android/server/chimera/SkipReasonLogger$Reason;->KILL_ONLY_ONE_SVC_AT_A_TIME:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    sget-object v12, Lcom/android/server/chimera/SkipReasonLogger$Reason;->HAS_CONNECTION_PROVIDER:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    filled-new-array/range {v0 .. v12}, [Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "LRU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 20
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "CACHED_EMPTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 21
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "PERSISTENT_OR_PROTECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 22
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "PICKED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 23
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "CACC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 24
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "INTERVAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 25
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "VISIBLE_SCREEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 26
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "WAKELOCK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 27
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "SERVICE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 28
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "UID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 29
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "ADJ_OR_PROC_STATE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 30
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "KILL_ONLY_ONE_SVC_AT_A_TIME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->KILL_ONLY_ONE_SVC_AT_A_TIME:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 31
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "HAS_CONNECTION_PROVIDER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->HAS_CONNECTION_PROVIDER:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 18
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .locals 1

    .line 18
    const-class v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .locals 1

    .line 18
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0}, [Lcom/android/server/chimera/SkipReasonLogger$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-object v0
.end method

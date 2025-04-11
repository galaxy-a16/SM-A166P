.class public final enum Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
.super Ljava/lang/Enum;
.source "PolicyHandler.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum ALREADY_DIED:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum EXECUTING_SERVICE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum HAS_CONNECTION_PROVIDER:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum RUNNING_INTENT:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum VISIBLE_ADJ:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;


# direct methods
.method public static synthetic $values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
    .locals 7

    .line 413
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    sget-object v1, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ALREADY_DIED:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    sget-object v2, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->EXECUTING_SERVICE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    sget-object v3, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->RUNNING_INTENT:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    sget-object v4, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    sget-object v5, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->VISIBLE_ADJ:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    sget-object v6, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->HAS_CONNECTION_PROVIDER:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    filled-new-array/range {v0 .. v6}, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 414
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 415
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "ALREADY_DIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ALREADY_DIED:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 416
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "EXECUTING_SERVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->EXECUTING_SERVICE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 417
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "RUNNING_INTENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->RUNNING_INTENT:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 418
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "ACTIVITY_TIME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 419
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "VISIBLE_ADJ"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->VISIBLE_ADJ:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 420
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "HAS_CONNECTION_PROVIDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->HAS_CONNECTION_PROVIDER:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 413
    invoke-static {}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->$values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 413
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
    .locals 1

    .line 413
    const-class v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
    .locals 1

    .line 413
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    invoke-virtual {v0}, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    return-object v0
.end method

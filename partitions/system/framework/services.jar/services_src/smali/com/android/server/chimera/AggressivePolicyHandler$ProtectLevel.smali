.class final enum Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;
.super Ljava/lang/Enum;
.source "AggressivePolicyHandler.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

.field public static final enum HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

.field public static final enum NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;


# direct methods
.method public static synthetic $values()[Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v1, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    filled-new-array {v0, v1}, [Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    new-instance v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    const-string v1, "HEAVY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-static {}, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->$values()[Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;
    .locals 1

    const-class v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;
    .locals 1

    sget-object v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v0}, [Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    return-object v0
.end method

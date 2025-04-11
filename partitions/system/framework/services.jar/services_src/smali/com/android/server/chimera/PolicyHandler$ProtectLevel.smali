.class public final enum Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
.super Ljava/lang/Enum;
.source "PolicyHandler.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public static final enum HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public static final enum NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;


# direct methods
.method public static synthetic $values()[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
    .locals 2

    .line 141
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    sget-object v1, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    filled-new-array {v0, v1}, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 142
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 143
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    const-string v1, "HEAVY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 141
    invoke-static {}, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->$values()[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
    .locals 1

    .line 141
    const-class v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
    .locals 1

    .line 141
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-virtual {v0}, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    return-object v0
.end method

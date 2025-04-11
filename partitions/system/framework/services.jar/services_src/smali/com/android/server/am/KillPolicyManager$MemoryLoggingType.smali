.class final enum Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

.field public static final enum IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

.field public static final enum PmmDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;
    .locals 2

    sget-object v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    sget-object v1, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->PmmDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    filled-new-array {v0, v1}, [Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    const-string v1, "IdleDump"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    const-string v1, "PmmDump"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->PmmDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->$values()[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;
    .locals 1

    const-class v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;
    .locals 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-object v0
.end method

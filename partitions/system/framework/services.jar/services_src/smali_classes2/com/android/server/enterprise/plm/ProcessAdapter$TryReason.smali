.class final enum Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;
.super Ljava/lang/Enum;
.source "ProcessAdapter.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum DEATH:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum UPDATE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;
    .locals 5

    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    sget-object v2, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    sget-object v3, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->DEATH:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    sget-object v4, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->UPDATE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    new-instance v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v1, "STOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    new-instance v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v1, "ALIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    new-instance v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v1, "DEATH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->DEATH:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    new-instance v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v1, "UPDATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->UPDATE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-static {}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->$values()[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->$VALUES:[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->$VALUES:[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    return-object v0
.end method

.class public final enum Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
.super Ljava/lang/Enum;
.source "PersonalizedMemoryManager.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

.field public static final enum APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

.field public static final enum DEVICE_IDLE:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

.field public static final enum LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

.field public static final enum PREV_PROC_DIED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;


# instance fields
.field private mTypeName:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
    .locals 4

    .line 71
    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->PREV_PROC_DIED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    sget-object v2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->DEVICE_IDLE:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    sget-object v3, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    const-string v1, "LMKD_KILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 73
    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    const-string v1, "PREV_PROC_DIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->PREV_PROC_DIED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 74
    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    const-string v1, "DEVICE_IDLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->DEVICE_IDLE:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 75
    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    const-string v1, "APP_LAUNCHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 71
    invoke-static {}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->$values()[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->$VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->mTypeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
    .locals 1

    .line 71
    const-class v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->$VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {v0}, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    return-object v0
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->mTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

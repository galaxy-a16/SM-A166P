.class public abstract synthetic Lcom/android/server/am/pmm/PersonalizedMemoryManager$1;
.super Ljava/lang/Object;
.source "PersonalizedMemoryManager.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$am$pmm$PersonalizedMemoryManager$MemoryEventType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59
    invoke-static {}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->values()[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$1;->$SwitchMap$com$android$server$am$pmm$PersonalizedMemoryManager$MemoryEventType:[I

    :try_start_0
    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$1;->$SwitchMap$com$android$server$am$pmm$PersonalizedMemoryManager$MemoryEventType:[I

    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$1;->$SwitchMap$com$android$server$am$pmm$PersonalizedMemoryManager$MemoryEventType:[I

    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->PREV_PROC_DIED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$1;->$SwitchMap$com$android$server$am$pmm$PersonalizedMemoryManager$MemoryEventType:[I

    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->DEVICE_IDLE:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

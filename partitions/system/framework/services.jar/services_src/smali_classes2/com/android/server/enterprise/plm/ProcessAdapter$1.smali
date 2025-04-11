.class public abstract synthetic Lcom/android/server/enterprise/plm/ProcessAdapter$1;
.super Ljava/lang/Object;
.source "ProcessAdapter.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 106
    invoke-static {}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->values()[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$1;->$SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$1;->$SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I

    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$1;->$SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I

    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

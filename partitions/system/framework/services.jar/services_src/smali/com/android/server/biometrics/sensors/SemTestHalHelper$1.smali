.class public abstract synthetic Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;
.super Ljava/lang/Object;
.source "SemTestHalHelper.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 93
    invoke-static {}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->values()[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;->$SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I

    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;->$SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;->$SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;->$SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;->$SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;->$SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENUMERATE:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

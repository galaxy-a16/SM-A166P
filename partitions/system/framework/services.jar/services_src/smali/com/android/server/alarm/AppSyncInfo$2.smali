.class public abstract synthetic Lcom/android/server/alarm/AppSyncInfo$2;
.super Ljava/lang/Object;
.source "AppSyncInfo.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$alarm$AppSyncWrapper$SET_TYPE:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->values()[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/alarm/AppSyncInfo$2;->$SwitchMap$com$android$server$alarm$AppSyncWrapper$SET_TYPE:[I

    :try_start_0
    sget-object v1, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
